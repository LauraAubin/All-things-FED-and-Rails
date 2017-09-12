# -------------------------------------------
# SECTION 7
# Many-To-Many Associations and Automated Testing
# -------------------------------------------

# has_many through:
# Can have a users table, comments, and a usersComments table.

# -------------------------------------------
# ERRORS
# -------------------------------------------

user.errors.full_messages # Display full error message.


# -------------------------------------------
# TEST CONTROLLER ACTIONS
# -------------------------------------------

# Test should get User index:
get :index
assert_response :success

# Test show, needs id of what you are trying to show:
get (:show, {'id' => @object.id})
assert_response :success


# -------------------------------------------
# INTEGRATION TEST
# -------------------------------------------

class CreateUserTest < ActionDispatch::IntegrationTest

# Test get new user form and create user:
get new_user_path # get path
assert_template 'users/new' # get correct view template
assert_difference "User.count", 1 do # create user and display it somewhere
  post_via_redirect users_path, user: {name: "thing"} # http post request to create path
end
# After redirect action
assert_template 'users/index'
assert_match "thing", response.body # check if view showing data correctly

# -------------------------------------------

# Test create method fails and new template is rendered as usual:
get new_user_path
assert_template 'users/new'
assert_no_difference "User.count" do # Note the 'no difference'.
  post users_path, user: {name: " "} # A user without a name will not save.
end
assert_template 'users/new' # Create method failed, new template renders.

# Look for title and body from errors partial.
# Assert the existance of these two things.
assert_select 'hr.panel-title'
assert_select 'div.panel-body'

# -------------------------------------------

class ListUserTest < ActionDispatch::IntegrationTest

# Setup some @users

# Test that all users are being listed and that they are actual links to the user show page:
# Select link and ensure that the link is to this:
assert_select "a[href=?]", user_path(@user), text: @user.name


# -------------------------------------------
# ADMIN TEST
# -------------------------------------------

# Test, should redirect create when admin not logged in

assert_no_difference 'Category.count' do
  post :create, category: { name: "thing" } # Post to the create action
end
assert_redirected_to users_path

sign_in_as(@user, "password")
# Test_helper
def sign_in_as(user, password)
  # Simulate a user signing in:
  post login_path session: {email: user.email, password: password}
end

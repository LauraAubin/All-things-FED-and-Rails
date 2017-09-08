# -------------------------------------------
# SECTION 4
# CRUD Operations
# -------------------------------------------

# Naming convention
Model : Singular, first letter uppercase
Table : Plural, lower case
Model file : all lower and singular
Controller name : plural of model


# -------------------------------------------
# DATABASE
# -------------------------------------------

object.new # Creates a new object in the db, needs to be saved.
object.create # Create object and save into db right away.
              # Returns object either way (if save successful or not).

# Validations by default create error messages, i., "Name cannot be blank".

# -------------------------------------------
# DISPLAY
# -------------------------------------------

def create
  render plain: params[:thing]
  # Simply displays the params on the page.
end

# CREATE
  # new object, permit values
  # save

# To remove an underline from a link using CSS:
a:link {
  text-decoration: none;
}

# -------------------------------------------
# CONTROLLER
# -------------------------------------------

# To make controller code cleaner:
def set_object
  @object = Object.find(params[:id])
end

# Then remove all the '@object = Object.find(params[:id])' code.

# Top of file
before_action :set_object, only: [:edit, :update, :show, :destroy]

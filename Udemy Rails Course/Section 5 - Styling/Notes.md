## Bootstrap

- [Bootstrap components](https://getbootstrap.com/docs/3.3/components/)

<br>

**Install:**

- Add `gem 'bootstrap-sass', '~> 3.3.5'` to the gemfile under "# Use SCSS for stylesheets".
- `bundle install`.
- Create a new file `custom.css.scss` under `stylesheets`.
- Inside this custom file, write `@import "bootstrap-sprockets";` & `@import "bootstrap";`.
- In `application.js`, put `//= require bootstrap-sprockets` under most require statements, most importantly jQuery.

<br>

Bootstrap already styles its components, but you can change these styles from the `custom.css.scss` file.

- Above the import statements, change specific bootstrap styles.
     - Ex, `$navbar-default-bg: #e6e5ff;` will change the navbar background color.

<hr>

**FOOTER:**
- Render a partial from application.
- Right element:
```
footer ul {
   float: right;
   list-style: none;
}
```

- Left element:
```
footer ul li {
  float: left;
  margin-left: 15px;
}
```

<hr>

**SYMBOL:**
- Copyright `&copy;` in html.erb.

<hr>

**RUBY:**
- `pluralize(@object.errors.count, "error")` Will pluralize "error" if there is more than one.

- Build error messaging into a partial.
    - Inside partial: `@object` -> "obj"
    - Rendering partial: `<%= render 'folder/partial', obj: @object %>`
    - This can be used to render partials from associated views. Ex, you can render an articles view from a users show but using `obj: @user.articles`.

<hr>

**PAGINATION:**
- `gem 'will_paginate'`.
- Index: `@articles = Article.paginate(page: params[:page], per_page: 5)`.
- Index view: `<%= will_paginate %>` before render show.

**LOGIN/LOGOUT:**
- `get 'login', to: 'sessions#new'`.
- `post 'login', to: 'sessions#create'`.
- `delete 'logout', to: 'sessions#destroy'`.
- Create sessions controller.
- Build login form (sessions new).
   - `<%= form_for(:session, :html => {role: "form"}, url: login_path) do |f| %>`. Direct/post the url to the login_path.
- From the login create form, `params[:session]` shows you available params entered upon create.
    - Ex, `params[:session][:email]` gives you the entered email.
    - Create in sessions controller: `user = User.find_by(email: params[:session][:email].downcase)`.
    - `if user && user.authenticate(params[:session][:password])` then success & `session[:user_id] = user.id` (save session using browser cookies). Else, `render 'new'` & `flash.now` since there has been no new page requests.
- From destroy/logout (`<%= link_to 'Log out', logout_path, method: :delete %>`), destroy session user and redirect. `session[:user_id] = nil` & `redirect_to root_path`.

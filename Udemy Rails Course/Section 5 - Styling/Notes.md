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

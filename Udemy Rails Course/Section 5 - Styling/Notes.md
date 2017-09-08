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

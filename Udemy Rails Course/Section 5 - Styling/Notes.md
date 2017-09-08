## Bootstrap

**Install:**

- Add `gem 'bootstrap-sass', '~> 3.3.5'` to the gemfile under "# Use SCSS for stylesheets".
- `bundle install`.
- Create a new file `custom.css.scss` under `stylesheets`.
- Inside this custom file, write `@import "bootstrap-sprockets";` & `@import "bootstrap";`.
- In `application.js`, put `//= require bootstrap-sprockets` under most require statements, most importantly jQuery.

Bootstrap already styles its components, but you can change these styles from the `custom.css.scss` file.

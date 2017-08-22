# Rails:

[Basic controller action, views, and links](https://github.com/LauraAubin/All-things-FED-and-Rails/pull/7)

Validating [regex](https://github.com/Shopify/learning_portal/pull/89/files#diff-4676c008b11a5480d73d4a6de01e45b9R8) formatting.

Testing with [errors](https://github.com/Shopify/learning_portal/pull/89/files#diff-b6d7d06f7e7b01588ae44fbc220c0675R77) and [empty error](https://github.com/Shopify/learning_portal/pull/89/files#diff-b6d7d06f7e7b01588ae44fbc220c0675R59) situations.

Force a space in a view using `&nbsp;`.

<hr>

### Learning Portal Experience Levels:
- [Autoprefixer gem](https://github.com/Shopify/learning_portal/pull/110/files#diff-8b7db4d5cc4b8f6dc8feb7030baa2478R68).
- CSS [classes & hover](https://github.com/Shopify/learning_portal/pull/110/files#diff-0400d3c3f3fa3061959880eda9dba5ea) states.
- [Constants](https://github.com/Shopify/learning_portal/pull/110/files#diff-29778f5324b60f90ff2ed1d3bdb8c864R2) and their use in [selection components.](https://github.com/Shopify/learning_portal/pull/110/files#diff-65e76be33710d4eb74ed8c00785026d7R29)
- [If statements](https://github.com/Shopify/learning_portal/pull/110/files#diff-a226f1bd0e5cadee63818c9e15344343R20) in Ruby.

<hr>

**Puma server:**
- `ps aux | grep puma`
- `kill -9 (5 digits)`

**Port server:**
- `lsof -wni tcp:(pid)` _pid = port id, most common: `3100`, `8080`_
- `kill -9 (pid)`

<hr>

## Steps to update a gem safely:

- Check the version change: _(major changes, minor, and patch versions (m, n, p))_.
- Look at the changelog on Github _(conflicting changes)_.
- Look at the gemfile.
- On the Github browser address: … compare/v1.3.0...v1.3.1 _(compare versions to check the changes)_.
- Run `“bundle update name_of_gem”`.
- Run tests to see if anything broke.
- Commit this change and open a separate PR _(gem changes are easier to revert if in a separate PR)_.

- [Example gem uses in U2](https://services.shopify.io/dependencies/u2/production?type=gem#).

<br>

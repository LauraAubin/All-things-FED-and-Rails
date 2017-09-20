# Rails:

[Basic controller action, views, and links](https://github.com/LauraAubin/All-things-FED-and-Rails/pull/7)

Validating [regex](https://github.com/Shopify/learning_portal/pull/89/files#diff-4676c008b11a5480d73d4a6de01e45b9R8) formatting.

Testing with [errors](https://github.com/Shopify/learning_portal/pull/89/files#diff-b6d7d06f7e7b01588ae44fbc220c0675R77) and [empty error](https://github.com/Shopify/learning_portal/pull/89/files#diff-b6d7d06f7e7b01588ae44fbc220c0675R59) situations.

Force a space in a view using `&nbsp;`.

Create a [past sessions](https://github.com/Shopify/learning_portal/pull/30) table using objects where _past_ is denoted by a time scope in the object's model.

Create a [group of attributes](https://github.com/Shopify/u2/pull/1261/files#diff-9656a3d1559c620b44e450a59ce066bfR65) from a collection of objects of the same object type.

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

**See all available routes:**
- `rake routes | grep [controller name]`
- Example: `bin/rake routes | grep capital` will show all available routes for the Capital controller.

<hr>

**Steps to update a gem safely**:
<br>
- Check the version change: _(major changes, minor, and patch versions (m, n, p))_.
- Look at the changelog on Github _(conflicting changes)_.
- Look at the gemfile.
- On the Github browser address: … compare/v1.3.0...v1.3.1 _(compare versions to check the changes)_.
- Run `“bundle update name_of_gem”`.
- Run tests to see if anything broke.
- Commit this change and open a separate PR _(gem changes are easier to revert if in a separate PR)_.

- [Example gem uses in U2](https://services.shopify.io/dependencies/u2/production?type=gem#).

<hr>

**Differences: Array vs SQL**:<br>
<sup>In connection to [this issue](https://github.com/Shopify/u2/issues/1538#event-1227815311) replacing _uniq_ with _distinct_.</sup>

Arrays:
- `newsfeed.uniq.sort_by(&:created_at)`
- `params[:team][:user_ids] = (user_ids + lead_ids).uniq if lead_ids.present?`
- `team_total('Engineering').uniq.count`
- `groups = LicenseRequest.pluck(:name).uniq`
- `User.where(id: self.health_check_responses.pluck(:user_id).uniq)`

SQL query:
- `Skill.uniq.order(:category).pluck(:category)`
- `User.joins(:teams).where(teams: {id: @team.subtree_ids}).distinct`

<hr>

**Virtual Attributes:** <sup>[Ruby doc](http://ruby-doc.com/docs/ProgrammingRuby/html/tut_classes.html#UC)</sup>

- Use attribute methods with no corresponding instance variable.

```
class User

  def method
    @var/5  # force floating point
  end
  
  def method=(value)
    @var = (value*5).to_i
  end
end

instance = User.new(12)
instance.method	» 2.4
instance.var » 60
```

<hr>

**Login as a different user:**

[Helper:](https://github.com/ShopifyFRS/bourgeois/blob/d97d888955f92dbe4bc748daffcafaf61e911a1c/test/test_helper.rb#L81-L83)
```
def login_as(user)
   @controller.stubs(:current_user).returns(user)
end
```

[Use:](https://github.com/ShopifyFRS/bourgeois/blob/7b71578296bff3af64b31949e934e4baa2ff8b93/test/controllers/internal/financings_controller_test.rb#L49)
```
login_as(users(user))
```
<hr>

**Update cache files:**<br>
<sup>Used when updating the vedor/cache files for qless on [Bourgeois](https://github.com/ShopifyFRS/bourgeois/pull/3207).</sup>
- `bundle package —all` 

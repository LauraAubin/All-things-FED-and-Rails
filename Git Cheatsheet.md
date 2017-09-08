# Git:

**Remove your last commit:**
- `git log` _Ensure the lastest commit is the one you want to remove
- `Git reset --hard HEAD ~1`
- `Git log` _Double check that the reset worked_
- `Git push -f`

<hr>

**Branch out of date with conflicts:**
- `git checkout master`
- `git pull`
- `git checkout (branch name)`
- `git rebase master`
- `git status`
- `git push -f`

<hr>

**Add more to an existing commit:**
- `git commit . --amend`

<hr>

**Restart your branch completely:**
- `git checkout -f` undo all changes<br>
_or,_<br>
- `git reset --hard` _Will remove any unstaged changes_
- `git pull`

<hr>

**Quick commit with message from terminal:**
- `git commit -a`
- `i` _Insert characters_
- `Shift ;` _To stop `i`_
- `Esc`
- `wq`
- `git push`
- `dev open pr`

<hr>

**Stashing:**
- `git stash`  
- `git stash list`
- `git stash apply` _Most recent stash_
- `git stash apply stash@{#}`

<hr>

**Stage all edited files for commit:**
- `git add .`

<hr>

**Checkout someone else's branch:**
- `git fetch origin master`
- `git checkout [name of branch]`

<hr>

**Heroku:**

- Get access to Heroku from [Okta](https://shopify.okta.com/app/UserHome#).
- Run `brew install heroku`

To make someone an admin:
- `heroku login --sso`
- Enter your organization name: `shopify`
- `heroku run`
- `heroku run rails console --app shopify-[name of app]`
- `user=User.find_by(email:"firstName.LastName@shopify.com")`
- `user.is_admin=true`
- `user.save` 

To access the production database:
- Login to Shopify
- `heroku run rails console --app u2-cedar --sandbox` _u2 sandbox example_.

<br>

**Delete a folder or file:**
- `rm -rf <name>`

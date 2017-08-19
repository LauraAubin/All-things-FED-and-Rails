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

<br>

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

<br>

# Markdown:

<kbd>Borders</kbd>

>Quotes

```Block```

<sup>Small text<sup>

<br>

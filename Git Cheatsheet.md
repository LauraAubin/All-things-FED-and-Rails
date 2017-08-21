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

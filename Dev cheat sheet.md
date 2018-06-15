## DEV:

**Test all files:**
- `dev test` usually works, but sometimes it only tests files that have been edited.
- `dev test -a` will test all files anyways.

<hr>

**Run an individual test:**
- `dev test [/file directory] --name /[test_name_with_underscores]/`

- You can also just specify a line number like `dev test file_directory:100`.

<hr>

**To quickly navigate to a Rails app page: **
- Make sure the server is running.
- `dev open app` This will launch a new browser window.

<hr>

**Open Atom from terminal: **
- Navigate to the folder for your repo.
- `Atom .`

<hr>

**Setting up dev with zsh:**
- To use the dev tool in iTerm for zsh:
- `vim ~/.zshrc`
- Paste the following:

```
[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
 prompt_context () { }
 ```

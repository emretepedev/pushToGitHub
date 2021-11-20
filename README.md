This script will be counter to the fu**** stupid HR who does not check the fu**** out other Git services (like GitLab).

Basically, when i push to something to GitLab (or like that), this script pushing an unnecessary commit with the empty message to GitHub. That's all.

---
# Prerequisites

### Connecting to GitHub via Ssh (optional but highly recommended)

Connect to GitHub via ssh to the smooth experience. If you don't know that, check out now from the [GitHub Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

---
# Installation

### Fork and Clone the Repository

Fork this repository ans then clone the forked repository to local. (If you are lazy, run `cd ~` or `cd $HOME` commands before git clone command. Because of the default [path](README.md#check-out-the-file-path).)

### The Execute Permission

You have to make executable to execute the sh file that one `pushToGitHub.sh`

```
sudo chmod +x /path/to/file/pushToGitHub.sh
```

### Check Out the File Path

Check out the file path from [pushToGitHub.sh:4](https://github.com/emretepedev/pushToGitHub/blob/master/pushToGitHub.sh#L4) and (if you need) customize for yourself. (default file path="/home/<your_username>/pushToGitHub/")

### Set the Alias (optional)

Set the alias (in .bashrc or .zshrc etc.) to the smooth experience like this:

```
alias gp2="git push && /path/to/file/pushToGitHub.sh"
```

![tutorial](tutorial.gif)

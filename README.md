# What

Basically, when I push something to GitLab (or other services), these scripts commit with an empty message and push to GitHub. That's all.

# Prerequisites

### Connecting to GitHub via Ssh (optional but highly recommended)

Connect to GitHub via ssh to the smooth experience. If you don't know that, check out now from the [GitHub Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

# Basic Installation

### Fork and Clone the Repository

Fork this repository and clone the forked repository to local. (If you are lazy, run `cd $HOME` commands before `git clone` command because of the default [path](README.md#check-out-the-file-path).)

### The Execute Permission

You have to make executable the sh files.

```bash
sudo chmod +x /path/to/commitToGitHub.sh
sudo chmod +x /path/to/pushToGitHub.sh
```

### Check Out the File Path

Check out the file path from [pushToGitHub.sh:7](https://github.com/emretepedev/pushToGitHub/blob/master/pushToGitHub.sh#L7) and [commitToGitHub.sh:7](https://github.com/emretepedev/pushToGitHub/blob/master/commitToGitHub.sh#L7) then (if you need to this) customize for yourself. (default file path="/home/<your_username>/pushToGitHub/")

### Set the Alias (optional)

Set the aliases in .bashrc (or .zshrc etc.) to the smooth experience.

```bash
alias gcmsg2="~/pushToGitHub/commitToGitHub.sh && git commit -m"
alias gp2="git push && ~/pushToGitHub/pushToGitHub.sh"
```

![tutorial](tutorial.gif)

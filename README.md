Basically, when i push to something to GitLab etc., this script pushing an unnecessary commit with the empty message to GitHub. That's all.

---
# Prerequisites

### Check the OS

If you are using a mac, you have to switch to `mac` branch.

### Connecting to GitHub via Ssh (optional but highly recommended)

Connect to GitHub via ssh to the smooth experience. If you don't know that, check out now from the [GitHub Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

---
# Usage & Basic Installation

### Fork and Clone the Repository

Fork this repository and then clone the forked repository to local. (If you are lazy, run `cd ~` or `cd $HOME` commands before git clone command. Because of the default [path](README.md#check-out-the-file-path).)

### The Execute Permission

You have to make executable to execute the sh file that one `pushToGitHub.sh`

```
sudo chmod +x /path/to/commitToGitHub.sh
sudo chmod +x /path/to/pushToGitHub.sh
```

### Check Out the File Path

Check out the file path from [pushToGitHub.sh:7](https://github.com/emretepedev/pushToGitHub/blob/master/pushToGitHub.sh#L7) and [commitToGitHub.sh:7](https://github.com/emretepedev/pushToGitHub/blob/master/commitToGitHub.sh#L7) then (if you need to this) customize for yourself. (default file path="/home/<your_username>/pushToGitHub/")

### Set the Alias (optional)

Set the alias in .bashrc (or .zshrc etc.) to the smooth experience like this:

```
alias gc2="/path/to/commitToGitHub.sh && git commit -m"
alias gp2="git push && /path/to/pushToGitHub.sh"
```

![tutorial](tutorial.gif)

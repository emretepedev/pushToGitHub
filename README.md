# pushToGitHub

Prerequisites

- Execute Permission
  - You need to make executable to execute sh file that one pushToGitHub.sh

```
sudo chmod +x /path/to/file/pushToGitHub.sh
```

- Set the alias
  - Set the alias (from .bashrc or .zshrc or like these) to smooth experience like this:

```
alias gp2="git push && /path/to/file/pushToGitHub.sh"
```

- Connect GitHub via Ssh
  - Connect to the GitHub via ssh to smooth experience. If you don't know that, check out now from the [GitHub Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

- Check Out The File Path
  - Check out the file path from [pushToGitHub.sh:4](https://github.com/emretepedev/pushToGitHub/blob/master/pushToGitHub.sh#L4) and (if you need to) customize for yourself. (default path = /home/<your_username>/pushToGitHub)

**And don't forget about to fork this project (or you need to create a new project in GitHub that includes files like these).

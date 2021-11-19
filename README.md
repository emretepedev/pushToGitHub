# Prerequisites

- Connect GitHub via Ssh (optional)
  - Connect to the GitHub via ssh to smooth experience. If you don't know that, check out now from the [GitHub Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

- Set the Alias (optional)
  - Set the alias (from .bashrc or .zshrc or like these) to smooth experience like this:

```
alias gp2="git push && /path/to/the/file/pushToGitHub.sh"
```

# Installation

- Fork or Create
  - You need to fork this project or create a new repository that includes files like these in GitHub.

- Clone the Repository
  - Clone forked or created repository.

- Execute Permission
  - You have to make executable to execute the sh file that one `pushToGitHub.sh`

```
sudo chmod +x /path/to/the/file/pushToGitHub.sh
```

- Check Out the File Path
  - Check out the file path from [pushToGitHub.sh:4](https://github.com/emretepedev/pushToGitHub/blob/master/pushToGitHub.sh#L4) and (if you need to) customize for yourself. (default path = /home/<your_username>/pushToGitHub)

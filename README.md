# Push to GitHub

A set of simple Bash scripts to automatically mirror commits and pushes from a primary repository (e.g., GitLab, Bitbucket) to a secondary GitHub repository.

## About The Project

These scripts are for developers who work with multiple Git hosting services but want to maintain a public mirror of their work on GitHub. This is a common scenario when your primary work is on a private or company-hosted GitLab/Bitbucket instance, but you still want to showcase your activity on your GitHub profile.

The scripts work by creating an empty commit and pushing it to the target GitHub repository, effectively mirroring your activity.

---

## Getting Started

Follow these steps to set up and use the scripts.

### Prerequisites

- **Git** must be installed on your system.
- **A Bash-compatible shell** (like Bash or Zsh).
- **SSH access to GitHub (optional)** is highly recommended for seamless, password-less authentication. If you haven't set it up, follow the official [GitHub SSH documentation](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

### Installation

1.  **Fork & Clone**

    First, fork this repository to your own GitHub account, then clone your forked repository to your local machine. It's convenient to clone it into your home directory.

2.  **Configure the Script's Repository Path**

    This is the most crucial step. The scripts need to know where **their own repository** (`pushToGitHub`) is located on your machine. They operate on this repository to create the empty commits that generate activity on your GitHub profile.

    Open both `commitToGitHub.sh` and `pushToGitHub.sh` with a text editor. Change the `REPO_DIR` variable (around line 7) to the **absolute path** where you cloned the `pushToGitHub` project.

    ```bash
    # Example path inside both commitToGitHub.sh and pushToGitHub.sh
    # This should point to the location of THIS project, not your other projects.
    REPO_DIR="$HOME/pushToGitHub"
    ```

3.  **Make Scripts Executable**

    Grant execution permissions to the scripts so they can be run from the command line.

    ```bash
    chmod +x /path/to/commitToGitHub.sh
    chmod +x /path/to/pushToGitHub.sh
    ```

---

## Usage

You can use the scripts manually, but for the best experience, we recommend setting up aliases or Git hooks.

### Option 1: Using Git Hooks (Recommended)

For complete automation, you can configure the scripts to run as a `post-commit` or `pre-push` Git hook. This will trigger the mirror action automatically after every commit or before every push. You can find ready-to-use examples in the `git-hooks-examples` folder to get started.

To learn more, check out the [official Git Hooks documentation](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks).

**Note:** Before using the hook scripts from the `git-hooks-examples` directory, you **must** open the hook file (e.g., `post-commit` or `pre-push`) and update the `REPO_DIR` variable inside it to the correct absolute path of your `pushToGitHub` clone.

```bash
REPO_DIR="$HOME/pushToGitHub"
```

### Option 2: Using Aliases

Aliases make running the scripts effortless. Add the following lines to your shell configuration file (e.g., `~/.bashrc`, `~/.zshrc`), then restart your shell or run `source ~/.bashrc`.

```bash
# Alias to first create the mirror commit, then your regular commit
alias gcmsg2="/path/to/commitToGitHub.sh && git commit -m"

# Alias to first push to your primary remote, then push to the GitHub
alias gp2="git push && /path/to/pushToGitHub.sh"
```

![tutorial](tutorial.gif)

# 🔧 Dotties

![Dotfiles](https://img.shields.io/badge/config-dotfiles-6da55f?style=for-the-badge&logo=gnu-bash)
![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-blue?style=for-the-badge)

> **"There is no place like `$HOME`."**

Welcome to my **Dotties** repository. This is a collection of my personal configuration files (dotfiles) tailored to create a productive, minimal, and keyboard-centric development environment. Managed via a **Bare Git Repository**, this setup allows for clean version control directly from the home directory without the need for symlinking tools like GNU Stow.

## 🛠️ The Tech Stack

Key configurations included in this repository:

| Tool | Description | Path |
| :--- | :--- | :--- |
| **Neovim** | My primary editor. Includes LSP, Treesitter, and custom keybindings. | `.config/nvim` |
| **Fish Shell** | Shell configuration, abbreviations, aliases, and prompt settings. | `.config/fish` |
| **Git** | Global git configuration and excludes. | `.gitconfig` |

---

## 🚀 Installation

Follow these steps to replicate this setup on a fresh machine.

## Working with Bare Git Repositories

1. Setup the bare repository. Execute the following commands in your terminal:

```bash
# Clone the bare repository
git clone --bare <repository-url> $HOME/.dotties.git

# Define an alias for easier access
alias dotties='/usr/bin/git --git-dir=$HOME/.dotties.git --work-tree=$HOME'
```

2. Checkout the dotfiles to your home directory:

> [!CAUTION]
> Checking out a bare repository may result in some files being overwritten, so back up any important files first.

```
dotties checkout
```

> [!TIP]
> Checkout Failed? If you have existing config files (like .gitconfig or .config/nvim), the checkout step will fail to prevent overwriting them. You must back up or delete your existing files, then run dotties checkout again.

3. Hide untracked files (prevents 'dotties status' from listing your whole home directory)

```
dotties config --local status.showUntrackedFiles no
```

### 👨🏻‍💻 Adding and Committing Changes

To add and commit changes to your dotfiles, use the following commands:

```bash
dotties add <file-path>

# To commit changes
dotties commit -m "Your commit message"
```

Likewise, to push changes to the remote repository, use:

```bash
dotties push
```

### 📝 Editing Documentation (Advanced)

Because this is a bare repository rooted in $HOME, the README.md might not be checked out to your home directory (to avoid clutter). To edit this README.md or other meta-files without polluting your home folder, use Git Worktrees.

#### Using Git Worktrees

This creates a temporary directory where the repository files exist normally, allowing you to edit the `README` comfortably.

1. **Create a worktree** inside your bare repo folder (or anywhere else):

```bash
# Syntax: git worktree add <path-to-temp-folder> <branch>
git worktree add $HOME/dotties-worktree main
```

2. **Edit the file**: Navigate to that folder. You will see all your files there, including README.md

```bash
cd $HOME/dotties-worktree
nvim README.md```

3. **Commit and push changes**: Since this is a linked working tree, standard git commands work here.

```bash
git add README.md
git commit -m "docs: update README"
git push origin main
```

4. **Clean up**: After you're done, you can remove the worktree.

```bash
cd ..
rm -rf $HOME/dotties-worktree
git worktree prune
```

## 📬 Contact & Contributions

Feel free to fork this repo or suggest improvements!

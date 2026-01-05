# Dotfile repo

Configuration files for the collection of tools I use on my PC, to make setup of a new desktop environment easier

This setup treats the $HOME folder as one big git repository, and uses an alias to move the bare .git directory at the root of the $HOME folder to $XDG_STATE_HOME/dots.

This way you can have your personal dotfiles under version control without install scripts or tools other than git, but you can also still use normal git commands in projects located in subdirectories of the home folder.

This setup is based on the approach described [here](https://www.atlassian.com/git/tutorials/dotfiles)

## Installation

Instructions to install these configuration files:
```
git clone --bare "git@github.com:losamyn/dotfiles.git" ~/.local/state/dots
alias dots='/usr/bin/git --git-dir=~/.local/state/dots --work-tree=$HOME
dots config --local status.showUntrackedFiles no
dots checkout
```
The final checkout will probably fail because of file conflicts, resolve these manually by moving or deleting these

### OPTIONAL
- `dots sparse-checkout set --no-cone '/*' '!README.md'` to not have the README live in the root of your home folder.
- `dots sparse-checkout disable` to restore README.md

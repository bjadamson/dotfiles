set -x PATH /usr/local/bin /bin /usr/sbin /sbin /usr/local/git/bin $PATH /opt/ghc/7.10.2/bin/
set TERM xterm-256color
git config --global core.editor "vim"

# Unset the path, we'll build it all by ourselves!
#set -e PATH

. ~/.config/fish/path.fish
. ~/.config/fish/work/top-level.fish

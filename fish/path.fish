# Unset the path, we'll build it all by ourselves!
set -e PATH

set -x PATH $PATH /usr/local/lib
set -x PATH $PATH /usr/local/bin
set -x PATH $PATH /usr/local/git/bin

set -x PATH $PATH /usr/bin
set -x PATH $PATH /usr/lib

set -x PATH $PATH /usr/lib
set -x PATH $PATH /usr/bin
set -x PATH $PATH /usr/sbin

set -x PATH $PATH /lib
set -x PATH $PATH /bin
set -x PATH $PATH /sbin

set -x PATH /usr/local/bin /bin /usr/sbin /sbin /usr/local/git/bin $PATH /opt/ghc/7.10.2/bin/

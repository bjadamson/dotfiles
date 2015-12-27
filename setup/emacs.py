#!/usr/bin/env python2.7
import os

def _install_themes():
    print "Installing emacs color themes..."
    os.system('git clone https://github.com/owainlewis/emacs-color-themes.git && cd emacs && emacs-color-themes && ./install.sh')
    print "done!"

def install_emacs():
    _install_themes()

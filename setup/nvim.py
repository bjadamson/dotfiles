#!/usr/bin/env python2.7
import os, shutil

def clone_vundle(homedir):
    dst = homedir + '/.nvim/bundle/Vundle.vim'
    if os.path.exists(dst):
        shutil.rmtree(dst)
    os.system('git clone https://github.com/gmarik/Vundle.vim.git ' + dst)

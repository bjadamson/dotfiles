#!/usr/bin/python
import os, sys

def create_symlink(file, destination):
    print "Creating symlink from " + file + " to " + destination
    os.system('ln -s ' + file + ' ' + destination)
    print "Symlink successfully created!"
    return

fileprefix = sys.path[0] + os.sep

# Create .gitconfig symlinks
file        = fileprefix + '../git/gitconfig'
destination = '~/.gitconfig'
create_symlink(file, destination)

# Create vim symlinks
file        = fileprefix + '../vim/'
destination = '~/.vim'
create_symlink(file, destination)

print "Done"

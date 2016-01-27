#!/usr/bin/env python2.7
import fileinput
import socket

def _add_amazon_specific_zsh_file(homedir, dotfiles_directory):
    print "Adding amazon only zsh config, homedir {0}".format(homedir)
    with open(dotfiles_directory + '/zshrc', 'a') as f:
        f.write('source $ZSH_DOTFILES/amazon')

def _replace_git_alias(homedir):
    print 'Replacing git alias, this is a work image.'
    dst = homedir + '/.gitconfig'
    for line in fileinput.input(dst, inplace=True):
        print line.replace(r'adamson.benjamin@gmail.com', 'badamson@amazon.com'),

def initialize_for_amazon_host(homedir, dotfiles_directory):
    _replace_git_alias(homedir)
    _add_amazon_specific_zsh_file(homedir, dotfiles_directory)

def is_amazon_hostname(homedir):
    return '.amazon.com' in socket.gethostname()

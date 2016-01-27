#!/usr/bin/env python2.7
import socket
import fileinput

def _add_amazon_specific_fish_config_file(homedir):
    print "Adding amazon specific fish config file."
    with open(homedir + 'fish/config.fish', 'a+') as f:
        f.write('. ~/.config/fish/work/top-level.fish\n')

def _add_amazon_specific_zsh_file(homedir):
    print "Adding amazon only zsh config"
    with open(homedir + '.zshrc', 'a') as f:
        f.write('source $PWD_DOTFILES/amazon')

def _replace_git_alias(prefix):
    print 'Replacing git alias, this is a work image.'
    dst = prefix + '/.gitconfig'
    for line in fileinput.input(dst, inplace=True):
        print line.replace(r'adamson.benjamin@gmail.com', 'badamson@amazon.com'),

def initialize_for_amazon_host(prefix):
    _replace_git_alias(prefix)
    _add_amazon_specific_fish_config_file(prefix)

def is_amazon_hostname(homedir):
    return '.amazon.com' in socket.gethostname()

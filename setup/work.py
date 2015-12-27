#!/usr/bin/env python2.7
import socket
import fileinput

def reconfigure_for_amazon(prefix):
    print 'Replacing git alias, this is a work image.'
    dst = prefix + '/.gitconfig'
    for line in fileinput.input(dst, inplace=True):
        print line.replace(r'adamson.benjamin@gmail.com', 'badamson@amazon.com'),

def is_amazon_hostname(homedir):
    return '.amazon.com' in socket.gethostname()

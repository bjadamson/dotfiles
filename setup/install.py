#!/usr/bin/env python2.7
import os

def system_dependency(name):
    print "installing system dependency {}".format(name)
    os.system('sudo apt-get install %s' % name)
    print "done!"

def add_repo(url):
    os.system("sudo apt-add-repository {}".format(url))

#!/usr/bin/env python2.7
import os

def symlink_thing(prefix, homedir, dotfile, target):
    dst = homedir + '/' + dotfile
    if os.path.islink(dst):
        val = os.unlink(dst)
    val = os.symlink(prefix + target, dst)
    print "val '" + str(val) + "'"

def system_dependency(name):
    print "installing system dependency {}".format(name)
    os.system('sudo apt-get install %s' % name)
    print "done!"

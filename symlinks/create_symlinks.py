#!/usr/bin/python
import os, sys

def create_symlink(source, destination):
    print "Creating symlink on disk at'{0}' -> '{1}'".format(destination, source)
    os.system('ln -s ' + source + ' ' + destination)

class SymlinkCopier:
    def __init__(self, os, path_prefix, tuples):
        self.os = os
        self.path_prefix = path_prefix
        self.tuples = tuples

    def remove_previous(self):
    """For whatever reason, islink always returns false.
    """
        for pair in self.tuples:
            source, dest = pair
            source_file = self.path_prefix + source
            if self.os.path.islink(source_file):
                print "Unlinking file '" + source_file + "'"
                self.os.unlink(source_file)

    def create_symlinks(self):
        for pair in self.tuples:
            source, dest = pair
            source_file = self.path_prefix + source
            create_symlink(source_file, dest)

    def debug(self):
        for pair in self.tuples:
            source, dest = pair
            print "tuple '{0}'".format(pair)

def main(argv):
    prefix = sys.path[0] + os.sep
    print "prefix '{0}'".format(prefix)
    git_tuple = ('../git/gitconfig', '~/.gitconfig')
    vim_tuple = ('../vim/', '~/.vim')
    list_tuples = [git_tuple, vim_tuple]

    copier = SymlinkCopier(os, prefix, list_tuples)
    copier.debug()
    copier.remove_previous()
    copier.create_symlinks()
    print "Done"

main(sys.argv)

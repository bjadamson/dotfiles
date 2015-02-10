What is this? What is it for??
-----------
My unix dotfile repository!
Consolidating all my linux/osx based files into one git repository. This has the
advantage that if I ever edit any of the files, I only need to update one
repository, and only have one repository to keep up to date on the various
unix based computers I use:
  
> It also means it's very easy to get setup on a new machine.
> This require that git and python are installed on the host machine.

How does this work?
-------------------
This will create symlinks in place of actual files for the above listed files. These symlinks will
point to files located within this repository.

How To use
-----------
1. Clone this repository to your ~ directory (ie: /users/badamson/)
2. Invoke './configure'
3. All done!

What is this? What is it for??
-----------
My unix .config file repository!
Consolidating all my linux based files into one git repository. This has the
advantage that if I ever edit any of the files, I only need to update one
repository, and only have one repository to keep up to date on the various
unix based computers I use:
  
> It also means it's very easy to get setup on a new machine.

> This require that git and python are installed on the host machine.

How To use
-----------
```sh
A) Clone this repository to your ~ directory (ie: /users/badamson/)

B) Remove the following folder/files from your hard-drive:
  1) ~/.gitconfig
  2) ~/.vim/

C) Execute the script located in the symlinks subdirectory.
  This will create symlinks in place of actual files for the above listed files.
  These symlinks will point to files located within this repository.
  ```

#!/bin/zsh
source ~/Downloads/dotfiles/zsh/alias

rm -rf ./build
mkdir build

clang++ --std=c++14 -stdlib=libstdc++ $@ -static -o build/a.out -lstdc++

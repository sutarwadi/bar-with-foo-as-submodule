#!/bin/bash
cp utils/devconfig/jayeshbadwaik/gitignore .gitignore
cp utils/devconfig/jayeshbadwaik/ycm_extra_conf.py .ycm_extra_conf.py
cp utils/devconfig/jayeshbadwaik/vimrc .vimrc
cp utils/devconfig/jayeshbadwaik/vim-cmake-project .vim-cmake-project
find *  -type d -name "devconfig" -prune -o  -print -type d -name "tex" -prune -o -print -exec sed -i "s/foo/$1/g" {} \;
find *  -type d -name "devconfig" -prune -o  -print -type d -name "tex" -prune -o -print -exec sed -i "s/FOO/$2/g" {} \;

if [ -d src/include/foo ]; then
  mv src/include/foo src/include/$1
fi

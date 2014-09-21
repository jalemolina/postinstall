#!/bin/bash
# Ejecutar como admin.

export LC_COLLATE=es_AR.utf8
export LANG=es_AR.utf8
export LANGUAGE=es_AR.utf8

cp -r etc/ /etc/
cp -r usr/ /usr/

mkdir -p ~/.fonts.conf.d/ ~/.config/fontconfig/conf.d/ ~/.fonts/

cp 10-powerline-symbols.conf ~/.fonts.conf.d/
cp 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
cp PowerlineSymbols.otf ~/.fonts/
cp ~/.vim/bundle/vim-powerline/fontpatcher/*.ttf ~/.fonts/
cp ~/.vim/bundle/vim-powerline/fontpatcher/*.ttf /usr/share/fonts/

fc-cache -vf
fc-cache -vf ~/.fonts
fc-cache -vf /usr/share/fonts

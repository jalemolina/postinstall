#!/bin/bash
# Ejecutar como admin.


cp -r etc/ /etc/
cp -r usr/ /usr/

cp 10-powerline-symbols.conf ~/.fonts.conf.d/
cp 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
cp PowerlineSymbols.otf ~/.fonts/

fc-cache -vf ~/.fonts
fc-cache -vf /usr/share/fonts

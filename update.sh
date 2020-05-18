#!/bin/bash

rm -rf pkg src dmenu.*
pushd ../dmenu/
git archive --format=tar.gz -o ../dmenu-installer/dmenu-4.9.tar.gz --prefix=dmenu/ master
popd
makepkg -si --noconfirm
rm -rf pkg src dmenu-*

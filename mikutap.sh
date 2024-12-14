#!/bin/bash

mkdir -p $HOME/www/

wget https://github.com/HFIProgramming/mikutap/archive/refs/heads/master.zip -O $HOME/master.zip

unzip $HOME/master.zip -d $HOME/
mv $HOME/mikutap-master/* $HOME/www/

rm $HOME/master.zip
rm -r $HOME/mikutap-master

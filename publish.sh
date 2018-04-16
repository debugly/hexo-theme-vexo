#!/bin/bash

localPath="../.hexo-theme-yaris"
alias gitC='git -C $localPath'

if [[ ! -d $localPath ]];then
    mkdir $localPath
    echo "clone to "$localPath
    git clone git@github.com:debugly/hexo-theme-yaris.git $localPath
else
    echo "git pull .."
    gitC pull origin master
fi

cp -r ./* $localPath

gitC add *
gitC commit -m "$(date +'Theme updated:%Y-%m-%d %H:%M:%S')"
gitC push origin master

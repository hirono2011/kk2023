#!/bin/bash

#dir=`pwd`; cd ~/.ssh; cp config.git config; cd $dir
git pull

SYS_NAME=`uname -a|cut -d' ' -f2`
DATE=`date '+%Y-%m-%d_%H%M'`
COMMIT_MES="update ${DATE} ${SYS_NAME}"
git add -A && git commit -m "`git status |sed -n '7,20p'`" -m "$COMMIT_MES"  && git push && echo -e "\n\n共有リポジトリを更新しました。\n"

echo "${COMMIT_MES} DONE"



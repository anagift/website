#!/bin/sh
set -e

# add ff, merge ours to .git/config
if ! grep -E '^\[merge\]$' .git/config; then
cat << EOF >> .git/config
[merge]
  ff = false
EOF
  echo "\nadd ff=false to .git/config\n"
else
  echo "\nalready exists ff=false in .git/config\n"
fi

if ! grep -E '^\[merge "ours"\]$' .git/config; then
cat << EOF >> .git/config
[merge "ours"]
  name = "Keep ours merge"
  driver = true
EOF
  echo "\nadd marge ours to .git/config\n"
else
  echo "\nalready exists merge ours in .git/config\n"
fi

# change paths to current path in  session.vim
CURRENT=$(cd $(dirname $0);pwd)
ESCAPE=`echo $CURRENT | sed "s/\//\\\\\\\\\//g"`
sed -i -e "s/~\/pathname/${ESCAPE}/g" session.vim
if [ $? -eq 0 ];then
  rm session.vim-e
  echo "\nsuccessfully change paths to current path in session.vim\n"
else
  echo "\ncan't change session.vim\n"
fi

gulp
gulp e2e

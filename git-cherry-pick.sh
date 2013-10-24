#!/bin/bash
if [ -z "$1" ]
     then
         read -p "Remote Username:" MSG
         read -p "Remote Address:" MSG2
	 read -p "Cherry-pick Sha:" MSG3
     else
         MSG="$1"
     fi
     git remote add "$MSG" "$MSG2"
     git fetch "$MSG"
     git cherry-pick "$MSG3"

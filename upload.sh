#!/bin/bash

##################################################
# jekyll upload to github
##################################################

main() {

  echo "-------------------------------------"
  echo "Syncing jekyll"
  echo "-------------------------------------"

  rsync -avz --delete --exclude '.git' /home/ulysses/Code/docker/javison/_site/ /home/ulysses/Git/ulyssesr.github.io/

  sleep 5

  cd ~/Git/ulyssesr.github.io/

  git status
  git add .
  git commit -am 'updated website'
  git push

}

main

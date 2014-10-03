#!/bin/bash

# Location of svn checkout root
SVNDIR="/home/mtesauro/projects/juicy-jackfruit/owasp-wte/"

# Location of where you want to export the svn
EXPDIR="/home/mtesauro/projects/juicy-jackfruit/exports"

for a in `cat list.txt`
do
  # cheat and get the 'exports' from the local svn repo
  cp -a $SVNDIR/conversion/$a $EXPDIR/
  
  # cheat again an manually remove the .svn stuff
  find $EXPDIR -type d -name ".svn" | xargs rm -rf

done

#!/bin/bash
for a in `cat list.txt`
do
   cd $a/contents
   buildod 1
   cd /home/fleec3/testbuild
done

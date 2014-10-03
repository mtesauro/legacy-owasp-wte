#!/bin/bash


for a in `cat list.txt`
do
  #auto co
  svn export https://owasp-wte.googlecode.com/svn/conversion/$a $a

done

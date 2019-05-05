#!/bin/bash

# this script adds pathvariable from pwd output to .bashrc
# and an alias for cd to path
# cd_myalias='cd mypath'

if [ ! -z $1 ];
then
	pos=$(pwd)
	myalias=$1

	mypath="$myalias='"
	mypath+="$pos'"
	echo "export $mypath">> ~/.bashrc

	mycommand="alias cd_$myalias="
	mycommand+="'"
	mycommand+="cd $pos'"
	echo $mycommand >> ~/.bashrc
else
	echo "usage: addpath2alias.sh ALIAS"
fi


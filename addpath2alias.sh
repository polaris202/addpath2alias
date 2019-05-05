#!/bin/bash

# this script adds pathvariable from pwd output to .bashrc
# and an alias for cd to path
# cd_myalias='cd mypath'

if [ ! -z $1 ];
then
	POS=$(pwd)
	ALIAS=$1

	path="$ALIAS='"
	path+="$POS'"
	echo "export $path">> ~/.bashrc

	command="alias cd_$ALIAS="
	command+="'"
	command+="cd $POS'"
	echo $command >> ~/.bashrc
else
	echo "usage: addpath2alias.sh ALIAS"
fi


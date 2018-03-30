#!/bin/bash

shopt -s nocasematch

SRC="$HOME/src"
COMDB2="$SRC/comdb2"
MASTER="$COMDB2/master"
SCRATCH="$SRC/scratch"
DEFAULT="$MASTER"
DIRS=()

DIRS+=("$COMDB2")
DIRS+=("$SCRATCH")
DIRS+=("$SRC")
DIRS+=("$HOME")
DIRS+=("/opt/bb/var/cdb2")

#for d in $SRC/* $SCRATCH/*
#do
#	[[ -d "$d" ]] && DIRS+=("$d")
#done

#DIRS+=("$COMDB2/tools")

function usage()
{
echo "Usage: go [-h] [DIRECTORY]
Go to directory matching regex [DIRECTORY].
Following locations are searched to find match:"
for DIR in "${DIRS[@]}"
do
	echo "$DIR"
done
echo "With no arguments, change directory to: $DEFAULT

  -h,  --help    display this help and exit

Tools by Akshat Sikarwar [https://github.com/sikarwar]"
}

function find_dir
{
	if [[ -z "$TARGET" ]]
	then
		TARGET=$DEFAULT
	elif [[ "$TARGET" == "data" ]]; then
		TARGET=/opt/bb/var/cdb2
		return
	elif [[ "$TARGET" == "bb" ]]; then
		TARGET=/opt/bb
		return
	fi
	for DIR in "${DIRS[@]}"
	do
		if [[ ! -d "$DIR" ]]
		then
			continue
		fi
		for d in `ls "$DIR"`
		do
			if [[ -d "$DIR/$d" ]] && [[ "$d" =~ "$TARGET" ]]
			then
				TARGET="$DIR/$d"
				return
			fi
		done
	done
}

function find_and_print()
{
	find_dir
	echo "$TARGET"
}

function find_and_go()
{
	find_dir
	[[ -d $TARGET ]] && echo "$TARGET"
	cd $TARGET
}

if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]]
then
	usage
fi

if [[ "$1" == "-p" ]] || [[ "$1" == "--print" ]]
then
	shift
	TARGET="$@"
	find_and_print
else
	TARGET="$@"
	find_and_go
fi
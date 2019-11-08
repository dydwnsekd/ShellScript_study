#!/bin/bash

parameter_check()
{
	echo "Usage: $0 [command1] [command2]"
}

if [ $# -ne 2 ]
then
	parameter_check
	exit 0
fi

# 첫번째 실행인자
command1=$1

# 두번째 실행인자
command2=$2

echo "$1"
echo "$2"
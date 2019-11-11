#!/bin/bash

parameter_check()
{
	echo "Usage: $0 [command1] [command2]"
}

command1=''
command2=0

# 옵션 확인
while getopts a:b: opt
do
	case $opt in
		a)
			command1=$OPTARG
			;;
		b)
			command2=$OPTARG
            ;;
		*)
			parameter_check
			exit 0
			;;
	esac
done

# parameter의 길이 확인
# -z 옵션의 문자열의 길이가 0이면 참을 반환
# -eq 옵션은 equal(==)
# 명령어 관련 옵션은 추가로 정리 예정
if [ -z $command1 ] || [ $command2 -eq 0 ]
then
	parameter_check
	exit 0
fi

echo "$command1"
echo "$command2"
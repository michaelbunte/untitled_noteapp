#!/bin/bash

# print current date directly
max=0
for FILE in *;
do 
    file=$FILE
    num=$(echo ${file%%_*} | xargs)
    re='^[0-9]+$'
    if ! [[ $num =~ $re ]] ; then
        continue
    fi

    if [ $num -gt $max ];
    then 
        max=$num
    fi
done
((max=max+1))
touch ${max}_$(date '+%m-%d-%Y').txt
open ${max}_$(date '+%m-%d-%Y').txt

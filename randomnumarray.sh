#!/bin/bash -x

randomnum1=$(( RANDOM % 999 ))

randomnum2=$(( RANDOM % 999 ))

randomnum3=$(( RANDOM % 999 ))

randomnum4=$(( RANDOM % 999 ))

randomnum5=$(( RANDOM % 999 ))

randomnum6=$(( RANDOM % 999 ))

randomnum7=$(( RANDOM % 999 ))

randomnum8=$(( RANDOM % 999 ))

randomnum9=$(( RANDOM % 999 ))

randomnum10=$(( RANDOM % 999 ))


counter=100

random[((counter++))]=$(($randomnum1))

random[((counter++))]=$(($randomnum2))

random[((counter++))]=$(($randomnum3))

random[((counter++))]=$(($randomnum3))

random[((counter++))]=$(($randomnum4))

random[((counter++))]=$(($randomnum5))

random[((counter++))]=$(($randomnum6))

random[((counter++))]=$(($randomnum7))

random[((counter++))]=$(($randomnum8))

random[((counter++))]=$(($randomnum9))

random[((counter++))]=$(($randomnum10))


echo "random num in the array as :"${random[@]}

secondGreatest=$(  sort -$random[@]u | tail -2 | head -1)

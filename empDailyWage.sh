#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

isPresent=1
randomcheck=$((RANDOM%2))
if [ $isPresent -eq $randomcheck ]
then
        emprateperHr=20
        empHrs=8
        salary=$(($empHrs*$emprateperHr))
else
        salary=0
fi

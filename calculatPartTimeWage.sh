#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"


isPartTime=1;
isFullTime=2;
emprateperHr=20;
randomcheck=$((RANDOM%3))
if [ $isFullTime -eq $randomcheck ]
then
        empHrs=8;
elif [ $isPartTime -eq $randomcheck ]
then
        empHrs=4;
else
        empHrs=0;
fi
salary=$(($empHrs*$emprateperHr))
echo $salary

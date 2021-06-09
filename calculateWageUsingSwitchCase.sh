#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"


isPartTime=1;
isFullTime=2;
emprateperHr=20;
randomcheck=$((RANDOM%3))
case $randomcheck in
        $isFullTime)
                empHrs=8;;
        $isPartTime)
                empHrs=4;;
        *)
                empHrs=0;;
esac

salary=$(($empHrs*$emprateperHr))
echo $salary

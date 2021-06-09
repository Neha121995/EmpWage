#!/bin/bash
echo "Welcome to Employee Wage Computation Program"

isPartTime=1;
isFullTime=2;
totalsalary=0;
emprateperHr=20;
numWorkingDays=20;
for (( day =1; day<=$numWorkingDays; day++ ))
do

        randomcheck=$((RANDOM%3));
                case $randomcheck in
                        $isFullTime)
                                empHrs=8;;
                        $isPartTime)
                                empHrs=4;;
                        *)
                                empHrs=0;;
                esac
                salary=$(($empHrs*$emprateperHr));
                totalsalary=$(($totalsalary+$salary));
done
echo $salary
echo $totalsalary

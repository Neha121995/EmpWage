#!/bin/bash
echo "Welcome to Employee Wage Computation Program"

IS_PART_TIME=1
IS_FULL_TIME=2
salaryperHr=20
numWorkDays=20
numWorkHrs=50


totalWorkDays=0;
totalWorkHrs=0;

function WorkingHrs()
{
        case $1 in
           $IS_FULL_TIME)
                workingHours=8;;
           $IS_PART_TIME)
                workinghours=4;;
           *)
                workingHours=0;;
        esac
        echo $workingHours;
}

while [[ $totalWorkHrs -lt $numWorkHrs &&
         $totalWorkDays -lt  $numWorkDays ]]
do
        ((totalWorkDays++))
        workingHours="$( WorkingHrs $((RANDOM%3)) )"
        totalWorkHrs=$(($totalWorkHrs + $workingHours))
done

totalSalary=$(($totalWorkHrs*$salaryperHr))
echo $totalSalary

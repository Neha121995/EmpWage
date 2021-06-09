#!/bin/bash

IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=50;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;


totalWorkingDays=0;
totalWorkHours=0;

declare -A empDailyWage

function getWorkingHours()
{
        case $1 in
           $IS_FULL_TIME)
                workHours=8;;
           $IS_PART_TIME)
                workHours=4;;
           *)
                workHours=0;;
        esac
        echo $workHours;
}

function calcDailyWage()
{
        local workHrs=$1
        wage=$(($workHrs*$EMP_RATE_PER_HR))
        echo $wage
}

while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH &&
         $totalWorkDays -lt  $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        workHours="$( getWorkingHours $((RANDOM%3)) )"
        totalWorkHours=$(($totalWorkHours+$workHours))
        empDailyWage[Day$totalWorkingDays]="$( calcDailyWage $workHours )"
#	echo "Day$totalWorkingDays ${empDailyWage[Day$totalWorkingDays]}"
done

totalSalary="$( calcDailyWage $totalWorkHours )"
#echo "Daily Wage :" ${empDailyWage[@]}
#echo "Days : " ${!empDailyWage[@]}

for ((i=1; i<=${#empDailyWage[@]}; i++))
do
	 echo "Day$i : ${empDailyWage[Day$i]}"
done

echo "Total months wage is : $totalSalary"

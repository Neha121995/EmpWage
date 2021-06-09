#!/bin/bash
echo "Welcome to Employee Wage Computation Program"

isPartTime=1;
isFullTime=2;
Max_Hrs_in_Month=100;
emprateperHr=20;
numWorkingDays=20;

totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHr -lt $Max_Hrs_in_Month &&
         $totalWorkingDays -lt $numWorkingDays ]]
do
        ((totalWorkingDays++))
        empcheck=$((RANDOM%3));
        case $empcheck in
                $isFullTime)
                        empHrs=8;;
                $isPartTime)
                        empHrs=4;;
                *)
                        empHrs=0;;
         esac
	totalEmpHr=$(($totalEmpHr+$empHrs));

done
totalsalary=$(($totalEmpHr*$emprateperHr));
echo $totalsalary

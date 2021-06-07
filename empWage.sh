#!/bin/bash -x

empCheck=$((RANDOM%2))
isPresent=1
if [ $empCheck -eq $isPresent ]
then
		echo "Employee is present"
else
		echo "Employee is not present"
fi

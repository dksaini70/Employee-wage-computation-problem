#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
present=1
absent=0
wageprhr=20
attend=$((RANDOM%2))
if [ $attend -eq $present ]
then
fulldayhr=8
echo "employee is present"
else
fulldayhr=0
echo "employee is absent"
fi
salary=$(($wageprhr * $fulldayhr))
echo $salary

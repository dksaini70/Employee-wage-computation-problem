#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
present=1
absent=0
parttime=2
wageprhr=20
attend=$((RANDOM%3))
if [ $attend -eq $present ]
then
fulldayhr=8
echo "employee is present"
elif [ $attend -eq $parttime ]
then
echo "employee is parttime"
fulldayhr=4
else
fulldayhr=0
echo "employee is absent"
fi
salary=$(($wageprhr * $fulldayhr))
echo $salary

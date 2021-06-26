x#!/bin/bash 
echo "Welcome to Employee Wage Computation"
present=1
absent=0
parttime=2
maxhrs=100
emp_rate_pr_hr=20
numtotalworkingday=20

totalemphr=0
totalwokingday=0
while [[ $totalemphr -lt $maxhrs && $totalworkingday -lt $numtotalworkingday ]]
do
((totalworkingday++))
attend=$((RANDOM%3))
case $attend  in
$present)
	emphr=8
	 ;;
$parttime)
	
	emphr=4;;
*)
	emphr=0

;;
esac
	totalemphr=$(($totalemphr + $emphr ))
done
echo  "totalworking hours is$totalemphr"
totalsalary=$(($totalemphr * $emp_rate_pr_hr))
echo "total salar is $totalsalary"

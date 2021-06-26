#!/bin/bash 
echo "Welcome to Employee Wage Computation"
present=1
absent=0
parttime=2
maxhrs=100
emp_rate_pr_hr=20
numtotalworkingday=20

totalworkinghr=0
totalwokingday=0
function getworkinghr()
{
case $1  in
$present)
	workinghr=8
	 ;;
$parttime)
	
	workinghr=4;;
*)
	workinghr=0
;;
esac
}
while [[ $totalworkinghr -lt $maxhrs && $totalworkingday -lt $numtotalworkingday ]]
do
((totalworkingday++))
        attend=$((RANDOM%3))
	getworkinghr $attend
	totalworkinghr=$(($totalworkinghr + $workinghr ))
done
echo  "totalworking hours is$totalworkinghr"
totalsalary=$(($totalworkinghr * $emp_rate_pr_hr))
echo "total salar is $totalsalary"

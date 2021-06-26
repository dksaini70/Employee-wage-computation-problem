#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
present=1
absent=0
parttime=2
wageprhr=20
attend=$((RANDOM%3))
case $attend  in
	$present)
fulldayhr=8
echo "employee is present" ;;
$parttime)
echo "employee is parttime"
fulldayhr=4;;
*)
fulldayhr=0
echo "employee is absent"
;;
esac
salary=$(($wageprhr * $fulldayhr))
echo $salary

echo "Welcome to Employee Wage Computation "
present=1
attend=$((RANDOM%2))

if [ $attend -eq $present ]
then
echo " employee is present "
else
echo "employee is absent"
fi


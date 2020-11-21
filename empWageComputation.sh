#!/bin/bash

echo "Welcome to the Employee Wage Computation Program"

empAttendance=$(( $RANDOM % 2 )) #Generates 0 or 1 randomly and assign it to the empAttendance variable

#Conditon for Attendance Check

if [[ $empAttendance -eq 0 ]]
then
	echo "Employee is Absent"
else
	echo "Employee is Present"
fi

# Calculating and Displaying Daily-Wage and the Monthly-Wage of the Employee using Switch Case

wagePerHour=20

fullDayHour=8
partTimeHour=4

daysPerMonth=20

isPartTime=1;
isFullTime=2;

maxHoursInMonth=100
totalHours=0
maxWorkDaysInMonth=0

 

while [[ $totalHours -le $maxHoursInMonth && $maxWorkDaysInMonth -le $daysPerMonth ]]
do
	((maxWorkDaysInMonth++))
	randomCheck=$(($((RANDOM%2))+1));
	case $randomCheck in
		$isPartTime)
				WorkTimeInHour=4
				DailyWage=$(( $wagePerHour * $partTimeHour ))
				monthlyWage=$(( $DailyWage * $daysPerMonth ))
				;;
		$isFullTime)
				WorkTimeInHour=8
				DailyWage=$(( $wagePerHour * $fullDayHour ))
				monthlyWage=$(( $DailyWage * $daysPerMonth ))
				;;
		*)
				echo "Employee Unidentified"
esac
totalHours=$(( $totalHours + $WorkTimeInHour ))
done

totalSalary=$(( $totalHours * $wagePerHour ))

echo "Total working days are $maxWorkDaysInMonth and working hours are $totalHours "
echo "Total salary : $totalSalary "









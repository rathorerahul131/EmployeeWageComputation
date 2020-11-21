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

randomCheck=$(($((RANDOM%2))+1)); 

case $randomCheck in
	$isPartTime)
			DailyWage=$(( $wagePerHour * $partTimeHour ))
			monthlyWage=$(( $DailyWage * $daysPerMonth ))

			echo "The employee is working Part Time so his Daily-Wage will be $DailyWage" 
			echo "and the Monthly-Wage will be $monthlyWage"
			;;
	$isFullTime)
			DailyWage=$(( $wagePerHour * $fullDayHour ))
			monthlyWage=$(( $DailyWage * $daysPerMonth ))

			echo "The employee is working Full Day so his Daily-Wage will be $DailyWage" 
			echo "and the Monthly-Wage will be $monthlyWage"
			;;
	*)
		echo "Employee Unidentified"
esac









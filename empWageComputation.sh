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

# Calculating and Displaying Daily Wage of the Employee using Switch Case

wagePerHour=20
fullDayHour=8
partTimeHour=4

isPartTime=1;
isFullTime=2;

randomCheck=$(($((RANDOM%2))+1)); 

case $randomCheck in
	$isPartTime)
			DailyWage=$(( $wagePerHour * $partTimeHour ))
			echo "The employee is working Part Time so his wage will be $DailyWage"
			;;
	$isFullTime)
			DailyWage=$(( $wagePerHour * $fullDayHour ))
			echo "The employee is working Full Day so his wage will be $DailyWage"
			;;
	*)
		echo "Employee Unidentified"
esac






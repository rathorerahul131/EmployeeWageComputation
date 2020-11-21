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

# Calculating and Displaying Daily Wage of the Employee

wagePerHour=20
fullDayHour=8

dailyWage=$(( $wagePerHour * $fullDayHour ))

echo "The daily wage for the employee working full day is $dailyWage"


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


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

WAGE_PER_HOUR=20

FUll_DAY_HOUR=8
PART_TIME_HOUR=4

DAYS_PER_MONTH=20

IS_PART_TIME=1;
IS_FULL_TIME=2;

MAX_HOURS_IN_MONTH=100

totalHours=0
maxWorkDaysInMonth=0

#function that returns the Work Time in Hours as per Part Time and Full Time
function getWorkHours(){
	case $1 in
		$IS_PART_TIME)
				WORK_TIME_IN_HOURS=4
				;;
		$IS_FULL_TIME)
				WORK_TIME_IN_HOURS=8
				;;
		*)
				echo "Employee Unidentified"
	esac
	echo $WORK_TIME_IN_HOURS
}

# function to get per day wage of employee
function getEmpWages(){
	empHours=$1
	echo $(( $WORK_TIME_IN_HOURS * $WAGE_PER_HOUR ))
}

# loop till total hours has reached 100 or max working days In month has reached 20
while [[ $totalHours -le $MAX_HOURS_IN_MONTH && $maxWorkDaysInMonth -le $DAYS_PER_MONTH ]]
do
	((maxWorkDaysInMonth++))
	WORK_TIME_IN_HOURS=$( getWorkHours $(($((RANDOM%2))+1)) )
	totalHours=$(( $totalHours + $WORK_TIME_IN_HOURS ))
	dailyWages["Day"$maxWorkDaysInMonth]=$( getEmpWages $WORK_TIME_IN_HOURS ) 
done

totalSalary=$(( $totalHours * $WAGE_PER_HOUR ))

echo "Total working days are $maxWorkDaysInMonth and working hours are $totalHours "
echo "Total salary : $totalSalary"

echo DailyWages:${dailyWages[@]}	#prints the Daily wages 
echo Day:${!dailyWages[@]}		#print the days








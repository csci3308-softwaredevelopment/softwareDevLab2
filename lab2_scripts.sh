#!/bin/bash
#Authors: Lara Chunko & Kelley Kelley
#Date: Jan 31, 2019

#Problem 1 Code:
#accepting a regular expression & file name
echo "Please enter a regular expression"
read regularExp
echo "Please enter a file name"
read fileName

#Probelm 2 Code:
#feeding the user's regular expression into grep
grep $regularExp $fileName

#Problem 3.1 Code:
#counting the number of phone numbers in regex_practice.txt
grep -c '\(\(([0-9]\{3\})\|[0-9]\{3\}\)[ -]\?\)\{2\}[0-9]\{4\}' $fileName
	#-c counts the number of occurences
	#the regex expression finds expressions of length 10 with numbers 0-9

#Problem 3.2 Code:
#count the number of emails
grep -c '@' $fileName 

#Problem 3.3 Code:
#list all of the phone numbers in the "303" area code and store the results in "phone_results.txt"
grep '303-' $fileName > phone_results.txt

#Problem 3.4 Code:
#list all of the emails NOT from geocities.com and store the results in email_results.txt
grep -E '@' $fileName | grep -E -v '@geocities.com' > email_results.txt
	#by doing -E, this means the data must include this and then by doing -v, it means the data must not include the following data

#Problem 3.5 Code:
#list all of the lines that match a command-line regular expression and store the results in command_results.txt
grep $1 $fileName > command_results.txt

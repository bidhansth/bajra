#!/bin/sh

listcon(){
	cat contacts.txt
}

addcon(){
	echo "Enter name and number"
	read add
	echo $add >> contacts.txt
}

delcon(){
	echo "Enter name or number to delete"
	read delete
	sed -i "/\b$delete\b/Id" contacts.txt
}

searchcon(){
	echo "Enter name"
	read search
	grep -i $search contacts.txt
}

changecon(){
	echo "Enter current number"
	read oldnum
	echo "Enter new number"
	read newnum
	sed -i "s/\b$oldnum\b/$newnum/" contacts.txt
}

while :
do
	echo "\n -----x------x-----x-----"
	echo "1. List all contacts"
	echo "2. Add contact"
	echo "3. Delete contact"
	echo "4. Search contact"
	echo "5. Change number"
	echo "0. Exit"
	echo "\n Choose an option"
	read OPTION
	case $OPTION in
		1)	listcon;;
		2)	addcon;;
		3)	delcon;;
		4)	searchcon;;
		5)	changecon;;
		0)	echo "bye"
			break;;
		*)	echo wrong;;
	esac
done



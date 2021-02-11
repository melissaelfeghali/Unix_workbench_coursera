#!/usr/bin/bash

# Melissa El Feghali

# Function that takes as a parameter the guess of the user and checks whether it is correct or not 
function check_answer {
	correct_answer=$(ls -A | wc -l)

	if [ $1 -gt $correct_answer ]
	then 
		echo "Your guess was too high. Try again !"
	elif [ $1 -lt $correct_answer ]
	then 
		echo "Your guess was too low. Try again !"
	else
		echo "Congratulations ! You have correctly guessed the number of files in the current directory."
		exit;
	fi
}

# The program should not end until the user has entered the correct number of files in the current directory
while true;
do
	# User is prompted for a guess 
	echo "How many files do you think are present in the current directory? Enter your guess below: "
	read input_guess
	check_answer $input_guess
done
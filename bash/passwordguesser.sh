#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command


referenceString="password"



echo -e "\e[96mUsing the if statment:
================================\e[0m"


# Prompt for password guess
prompt="Guess the password: "
read -p "$prompt" myString

#One time guess using if statement
if [ $myString != $referenceString ]; then
   echo -e "The password eludes you... "
else
  echo "You guessed it!"
fi

# Allow three tries
echo ""
echo -e "\e[96mUsing the while statement
==============================\e[0m"

x=3

while [ $x != 0 ] #while x is not 0
do
  prompt="Guess the password: " #prompt for password guess
  read -p "$prompt" myString

  if [ $myString = $referenceString ]; then # if the passwords match
   echo "You guessed it!"
   break                                    #Abandon the while loop
 elif [ $x -gt 1 ]; then #as long as x is greater than 1, give another chance
   echo "Sorry, try again!"
 else # if last chance was a no guess...
   echo "Sorry, only three tries. You didn't guess it!"
  fi
  x=$(( $x - 1 )) #decrement x by one (only three tries available)
done

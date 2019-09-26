#!/bin/bash
#
# this script rolls a pair of six-sided dice
#

# Improve this script by adding a second line of output showing a roll of 5 six-sided dice
# Improve this script by adding a third line of output that rolls a single 20-sided die
# These improvements should also take into consideration the user, and make all 3 output lines self-explanatory to the user
#    - e.g. the first line should be changed to read something like:
#         Rolling a pair of standard dice: x,y rolled
#      and the other output lines should be similarly helpful to the user

# roll 2 six sided dice and display the result
echo "
Rolling...2, six sided dice:
----------------------------------
Die 1 --> $(( RANDOM % 6 + 1 ))
Die 2 --> $(( RANDOM % 6 + 1 ))
"

# roll 5 six sided dice and display the result
echo "
Rolling...5, six sided dice:
----------------------------------
Die 1 --> $(( RANDOM % 6 + 1 ))
Die 2 --> $(( RANDOM % 6 + 1 ))
Die 3 --> $(( RANDOM % 6 + 1 ))
Die 4 --> $(( RANDOM % 6 + 1 ))
Die 5 --> $(( RANDOM % 6 + 1 ))"

# roll a 5 sided dice and display result
echo "
Rolling...a 20 sided die:
----------------------------------
Die --> $(( RANDOM % 20 + 1 )) "

#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

prompt="Enter an integer: "
read -p "$prompt" firstnum
prompt="Enter another integer: "
read -p "$prompt" secondnum

sum=$((firstnum + secondnum))
diff=$((firstnum - secondnum))
multiply=$((firstnum * secondnum))
dividend=$((firstnum / secondnum))
remainder=$((firstnum % secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")
powers=$((firstnum ** secondnum))

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum minus $secondnum is $diff
$firstnum multiplied by $secondnum is $multiply
$firstnum divided by $secondnum is $dividend with remainder $remainder
  - More precisely, it is $fpdividend
$firstnum to the power of $secondnum is $powers
EOF

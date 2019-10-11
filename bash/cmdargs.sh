#!/bin/bash
# This script demonstrates how the shift command works

# loop through the command line arguments
debug="off"
unknown_var=()
x=0

while [ $# -gt 0 ]; do

  # tell the user how many things are left on the command line
  # echo "There are $# things left to process on the command line."
  # display whatever is in $1
  # echo '$1 has '"''$1' in it."

# TASK 1: replace the echo command that just says processing with a case statement that
#             recognizes the following command line options and tells the user if
#             they were found on the command line
#          Options to recognize: -h for help, -v for verbose mode
# TASK 2: add recognition of a debug option -d that expects a number that specifies the debug level (e.g. -d 3)
#             save the debug level in a variable to be available to use later in the script
#             display an error if the user gave the -d option without a number after it
# TASK 3: put anything that wasn't recognized on the command line into a variable for use later in the script
  # check for -h, -v, -d

    case $1 in
      -h )
        echo "---------------------------------------------"$'\n'
        echo " -h for help was entered on the command line"$'\n'
        ;;
      -v )
        echo "-----------------------------------------------"$'\n'
        echo " -v for verbose was entered on the command line"$'\n'
        ;;
      -d )
        debug="yes"
        shift
          if ! [[ $1 =~ ^[0-9]+$ && $1 -lt 10 ]]; then
            echo ""
            echo " ### Error! Integer value (1-9) missing after -d "$'\n' >&2
            exit 2
          else
            echo "----------------------------------------------"$'\n'
            echo " Debug level $1 has been input on command line"$'\n'
            echo ""
            debug_num=$1
          fi
        shift
        continue
        ;;
      * )
        unknown_var[$x]=$1
        ((x++))
        ;;
    esac
  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # go back to the top of the loop to see if anything is left to work on
done

if [ ${#unknown_var[@]} -gt 0 ]; then
cat <<EOF
---------------------------------------------------------------------

 Unrecognized values entered: ${unknown_var[@]}

EOF
fi

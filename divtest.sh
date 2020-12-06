#divtest
#Dakota Flath
#300257086
#2020-11-30

#!/bin/bash

FAIL=0
COUNT=0

if [ $# -eq 2 ] ; then #error handling check

  echo -n "Enter an integer to test: "
  read TEST

  for i in $* ; do #iterate over each argument
    if [ $(expr $TEST % $i) -eq 0 ] ; then #check if there's a remainder
      echo "$TEST is divisible by $i."
    else 
      COUNT=`expr $COUNT + 1` #count the number of divisions with remainders
      if [ $COUNT -eq 2 ] ; then #print if neither are divisible cleanly
        echo "$TEST is not divisible by $1 or $2." 
      fi #innermost if
    fi #middle if
  done #for-loop

else
  echo "Usage error: two, integer command-line arguments required.\nTry again." #error-handling
fi #outermost if

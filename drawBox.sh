#drawBox
#Dakota Flath
#300257086
#2020-11-30

#!/bin/bash

if [ $# -eq 4 ] ; then #error handling check

  for (( i=1; i<=$2; i++ )) ; do #iterate over rows

  COUNT=$i #keep track of which line

    for (( x=1; x<=$1; x++ )) ; do #iterate over columns
      if [ $(expr $COUNT % 2) -eq 0 ] ; then #check even or odd line
        echo -n "$4"
      else
        echo -n "$3"
      fi #innermost if-statement
    done #innermost for-loop

  echo "" #move down a row

  done #outermost for-loop

else 
  echo -e "Error: Invalid number of arguments\n\
  - Enter 4 arguments on the command line.\n\
  - enter 2 integers followed by two letters."
fi #outermost if-statement

#!/bin/bash

#And Operator
if  [ 1 -eq 1 ] && [ 2 -eq 2 ]; then
  echo "AND equal"
else
  echo "AND Not Equal"
fi

#OR Operator
if [ 1 -eq 2 ] || [ 2 -eq 2 ]; then 
   echo "OR equal"
else
   echo "OR Not Equal"
fi


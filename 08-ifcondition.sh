#!/bin/bash

NUMBER=$1
echo "You entered value: $NUMBER"

if [ $NUMBER -gt 20 ]; then
   echo "The entered Number :$NUMBER is greater than 20" 
elif [ $NUMBER -eq 20 ]; then    
   echo "The entered Number :$NUMBER is equal to 20" 
elif [ $NUMBER -lt 20 ]; then    
   echo "The entered Number :$NUMBER is less than 20" 
else
  echo "Not able to compar the entered Number :$NUMBER" 
fi

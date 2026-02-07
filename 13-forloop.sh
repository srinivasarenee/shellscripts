#!/bin/bash

for ((i=0; i<10; i++)); 
do
    echo "Loop Value: $i"
done

for i in {1..10} 
do
    echo "new Loop Value: $i"
done
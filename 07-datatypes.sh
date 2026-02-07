#!/bin/bash

NUM1=10
NUM2=5
SUM=$(($NUM1+$NUM2))
echo "SUM is :$SUM"

FRUITS=("Apple" "Banana" "Carrot")

echo "Fruits are : ${FRUITS[@]}"

echo "Fruits are : ${FRUITS[0]}"

echo "Fruits are : ${FRUITS[1]}"

echo "Fruits are : ${FRUITS[2]}"
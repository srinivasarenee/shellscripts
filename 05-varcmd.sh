#!/bin/bash

START_TIME=$(DATE +%s )
echo "Process  Started at   :$START_TIME"
sleep 10
END_TIME=$(DATE +%s)

echo "Process Completed at  :$END_TIME"

EXECUTION_TIME=$(($END_TIME-$START_TIME))

echo "Process Execution Time:$EXECUTION_TIME"
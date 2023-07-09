#!/bin/bash

processes=$(ps -e -o pid,comm,%cpu --sort -%cpu | awk '{print $2 " (PID: " $1 ") - CPU Usage: " $3 "%"}')

echo "Running Processes and CPU Usage:"
echo "--------------------------------"

echo "$processes"

#!/bin/bash

memory=$(ps -e -o pid,comm,rss --sort -rss | awk '{print $2 ":" int($3/1024) "MB"}')

echo "Memory Usage:"
echo "--------------"

echo "$memory"

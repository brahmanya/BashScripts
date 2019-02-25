#!/bin/bash

# Check if gedit is running
# -x flag only match processes whose name (or command line if -f is
# specified) exactly match the pattern. 

#pgrep -fl test.sh | wc -l
result=`ps aux | grep -i "test.sh" | grep -v "grep" | wc -l`

if [ $result -le 2 ]
    then
        while true; do
        echo "Printing Continues"
        sleep 300
        done
    else
        echo "Shell Script Running"    
        # kill -9 PID
fi


#!/bin/bash

if [[ $date +%A = wednesday ]]
then
        echo "wed_back.txt"
else
        if [[ $date +%A = sunday ]]
                echo "partial backup"
        fi


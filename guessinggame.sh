#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "pleas enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            aecho "your guess is less than the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "your guess is greater than the true number"
        else
            echo " congratulation,you are right!"
        break;
        fi
    done
}
echo "guess the file number in the current directory!"
guess

#!/bin/sh

    tmp=/tmp/$$

    ERROR_EXIT () {
        echo "$1" >&2
        rm -f $tmp-*
        exit 1
    }

#########
# TEST4 #
#########

    echo "Input error. Please input two numbers." > $tmp-ans
    ./17745102 2> $tmp-err && ERROR_EXIT "TEST4-1"
    diff $tmp-ans $tmp-err || ERROR_EXIT "TEST4-2"

    echo "input 100"
    cat $tmp-err
    echo TEST4 OK
    rm -f $tmp-*
    exit 0
 

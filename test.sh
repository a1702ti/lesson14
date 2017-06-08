#!/bin/sh

    tmp=/tmp/$$

    ERROR_EXIT () {
        echo "$1" >&2
        rm -f $tmp-*
        exit 1
    }

#########
# TEST1 #
#########

    echo saidai kouyakusu : 10 > $tmp-ans
    ./17745102 10 100 > $tmp-out || ERROR_EXIT "TEST1-1"
    diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

    echo "input 10 100"
    cat $tmp-out
    echo TEST1 OK
    rm -f $tmp-*
    exit 0
 

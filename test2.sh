#!/bin/sh

    tmp=/tmp/$$

    ERROR_EXIT () {
        echo "$1" >&2
        rm -f $tmp-*
        exit 1
    }

#########
# TEST2 #
#########

    echo saidai kouyakusu : 15 > $tmp-ans
    ./17745102 45 15 > $tmp-out || ERROR_EXIT "TEST2-1"
    diff $tmp-ans $tmp-out || ERROR_EXIT "TEST2-2"

    echo "input 45 15"
    cat $tmp-out
    echo TEST2 OK
    rm -f $tmp-*
    exit 0
 

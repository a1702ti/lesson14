#!/bin/sh

    tmp=/tmp/$$

    ERROR_EXIT () {
        echo "$1" >&2
        rm -f $tmp-*
        exit 1
    }

#########
# TEST3 #
#########

    echo saidai kouyakusu : 11 > $tmp-ans
    ./17745102 121 22 > $tmp-out || ERROR_EXIT "TEST3-1"
    diff $tmp-ans $tmp-out || ERROR_EXIT "TEST3-2"

    echo "input 121 22"
    cat $tmp-out
    echo TEST3 OK
    rm -f $tmp-*
    exit 0
 

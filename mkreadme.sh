#!/bin/bash

[ "$NAME" ] || NAME=$(basename $(pwd))

ls -bt | sort | grep -v 'readme' | grep -v 'push' | grep -v 'index' | awk -F'\t' 'BEGIN {print "= '$NAME'\n"} {print "* link:" $1 "[" $1 "]\n+\n[link=" $1 "]\nimage::" $1 "[width=500]" }'

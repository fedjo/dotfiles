#!/bin/sh

vol=$(amixer get Master | tail -n 1 | cut -d ' ' -f6,8 | sed -e 's/\[//g' -e 's/\]//g' | awk '{if ($2=="off") {print "0%"} else {print $1}}')
echo $vol

exit 0

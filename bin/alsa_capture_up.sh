#! /bin/bash

CURVOL=`amixer get Capture | grep "Front Left:" | cut -d ' ' -f 6`
MAXVOL=`amixer get Capture | grep Limits: | cut -d ' ' -f 7`
if [ $CURVOL -lt $MAXVOL ]
then
NEWVOL=$(($CURVOL + 1))
amixer set Capture $NEWVOL
fi



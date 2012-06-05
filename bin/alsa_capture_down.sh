#! /bin/bash

CURVOL=`amixer get Capture | grep "Front Left:" | cut -d ' ' -f 6`
MINVOL=`amixer get Capture | grep Limits: | cut -d ' ' -f 5`
if [ $CURVOL -gt $MINVOL ]
then
NEWVOL=$(($CURVOL - 1))
amixer set Capture $NEWVOL
fi



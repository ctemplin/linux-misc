#! /bin/bash

CURVOL=`amixer get Master | grep "Front Left:" | cut -d ' ' -f 6`
MINVOL=`amixer get Master | grep Limits: | cut -d ' ' -f 7`
if [ $CURVOL -lt $MINVOL ]
then
NEWVOL=$(($CURVOL + 1))
amixer set Master $NEWVOL
fi



#! /bin/bash

CURVOL=`amixer get Master | grep "Front Left:" | cut -d ' ' -f 6`
MINVOL=`amixer get Master | grep Limits: | cut -d ' ' -f 5`
if [ $CURVOL -gt $MINVOL ]
then
NEWVOL=$(($CURVOL - 1))
amixer set Master $NEWVOL
fi



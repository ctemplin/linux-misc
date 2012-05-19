#! /bin/bash
CURVOLHEX=`pacmd dump | egrep 'set-source-volume alsa_input.pci-0000_00_1b.0.analog-stereo' | cut -d ' ' -f 3`
CURVOLDEC=`printf "%d" $CURVOLHEX`
NEWVOLDEC=$[$CURVOLDEC + 3276]
NEWVOLHEX=`printf "%x" $NEWVOLDEC`
#echo $NEWVOLHEX
pacmd set-source-volume alsa_input.pci-0000_00_1b.0.analog-stereo 0x$NEWVOLHEX

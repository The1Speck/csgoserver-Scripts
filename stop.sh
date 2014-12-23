#!/bin/sh
#Server Stop Script by The1Speck

#VARS
$SRVRNICK="csgo-bleh"

if screen -ls | grep -q $SRVRNICK; then
	screen -S $SRVRNICK -X quit 
	echo The server has been stopped.
else
	echo There is no server to stop.
fi

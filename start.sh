#!/bin/sh
#Server Start Script by The1Speck
#Vars
SRVRNICK="csgo-bleh"
CMDLINE="-game csgo -console -debug -usercon -maxplayers_override 24 -tickrate 64 -condebug -nobots +map de_dust2 -ip 123.456.789.11 -port 27015 +game_type 0 +game_mode 0"

if screen -ls | grep -q $SRVRNICK; then
	screen -S $SRVRNICK -X quit 
	screen -dmS $SRVRNICK ./srcds_run $CMDLINE
	echo Your server has been restarted.
else
	screen -dmS $SRVRNICK ./srcds_run $CMDLINE
	echo Your server has been started.
fi

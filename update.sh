#!/bin/sh
#Server Update Script by The1Speck

#VARS
SRVRNICK = "csgo-bleh"
STEAMCMDPATH = "/path/to/your/steamcmd/./steamcmd.sh" #Keep the ./ as if the shell is being executed
USER = "anonymous"
PASS = ""
SERVERDIR = "path/to/your/srcds_run"
CMDLINE = "-game csgo -console -debug -usercon -maxplayers_override 24 -tickrate 64 -condebug -nobots +map de_dust2 -ip 123.456.789.11 -port 27015 +game_type 0 +game_mode 0"

if screen -ls | grep -q $SRVRNICK; then
	screen -S c$SRVRNICK -X quit
fi
$STEAMCMDPATH +login $USER $PASS +force_install_dir $SERVERDIR +app_update 730 +quit
screen -dmS $SRVRNICK ./srcds_run $CMDLINE
echo ''
echo 'Server has been restarted'

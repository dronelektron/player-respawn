#!/bin/bash

PLUGIN_NAME="player-respawn"
DOD_HOOKS="../../dod-hooks/scripting/include"

cd scripting
spcomp $PLUGIN_NAME.sp -i include -i $DOD_HOOKS -o ../plugins/$PLUGIN_NAME.smx

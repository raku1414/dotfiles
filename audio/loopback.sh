#!/bin/sh
###~/loop.sh###
/usr/bin/alsa_out -j ploop -dploop -q 1 2>&1 1> /dev/null &
/usr/bin/alsa_in -j cloop -dcloop -q 1 2>&1 1> /dev/null &
sleep 1
jack_connect cloop:capture_1 system:playback_1
jack_connect cloop:capture_2 system:playback_2
a2jmidid -e &
exit 0

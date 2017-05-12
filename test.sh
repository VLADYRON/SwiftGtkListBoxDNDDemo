#!/bin/sh
#
# Wrapper around `swift test' using config.sh and checking
# that the swift wrapper code exists
#
. ./config.sh
gtk=`echo $PACKAGES/*Gtk*/Sources/Gtk-3.0.swift`
[ -e $gtk ] || ./generate-wrapper.sh
exec swift test "$@"

#!/bin/sh

init="$(($(cat /sys/class/net/[ew]*/statistics/rx_bytes | paste -sd '+')))"

printf "Recording bandwith. Press enter to stop."

read -r lol

fin="$(($(cat /sys/class/net/[ew]*/statistics/rx_bytes | paste -sd '+')))"

printf "%4sB of bandwith used.\\n" $(numfmt --to=iec $(($fin-$init)))

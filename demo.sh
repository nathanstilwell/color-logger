#!/bin/bash

. lib/color_logger.sh;

log
log "   C" -c "red" -nu
log "o" -c "green" -nu
log "l" -c "yellow" -nu
log "o" -c "blue" -nu
log "r " -c "purple" -nu

log " L" -c "cyan" -b -nu
log " o" -c "white" -b -nu
log " g" -c "bright_red" -b -nu
log " g" -c "bright_green" -b -nu
log " e" -c "bright_yellow" -b -nu
log " r " -c "bright_blue" -b -nu

log "D" -c "black" -k "red" -nu
log "E" -c "black" -k "green" -nu
log "M" -c "black" -k "yellow" -nu
log "O" -c "black" -k "blue" -nu
log "   " -c "blue" -u
log

log " Available Text colors" -b;
log
log " default" -n;
log " red" -c "red" -n;
log " green" -c "green" -n;
log " yellow" -c "yellow" -n;
log " blue" -c "blue" -n;
log " purple" -c "purple" -n;
log " cyan" -c "cyan" -n;
log " white" -c "white";
log " bright_red" -c "bright_red" -n;
log " bright_green" -c "bright_green" -n;
log " bright_yellow" -c "bright_yellow" -n;
log " bright_blue" -c "bright_blue";
log " bright_purple" -c "bright_purple" -n;
log " bright_cyan" -c "bright_cyan" -n;
log " bright_white" -c "bright_white";
log

log " Available Background Colors" -b;
log
log " red " -c "black" -k "red" -n;
log " green " -c "black" -k "green" -n;
log " yellow " -c "black" -k "yellow" -n;
log " blue " -c "black" -k "blue" -n;
log " purple " -c "black" -k "purple" -n;
log " cyan " -c "black" -k "cyan" -n;
log " white " -c "black" -k "white";
log " bright_red " -c "black" -k "bright_red" -n;
log " bright_green " -c "black" -k "bright_green" -n;
log " bright_yellow " -c "black" -k "bright_yellow" -n;
log " bright_blue " -c "black" -k "bright_blue";
log " bright_purple " -c "black" -k "bright_purple" -n;
log " bright_cyan " -c "black" -k "bright_cyan" -n;
log " bright_white " -c "black" -k "bright_white";
log

log "Available Emphasis" -b;
log
log " bold" -b -n
log " italic" -i -n
log " underline" -u -n
log " blink " -l -n
log "reverse" -r -n
log
log
log " And....." -b
log
log " You " -b -c "yellow" -n
log "can" -c "blue" -k "bright_green" -n
log " " -n
log "combine" -u -c "cyan" -n
log " " -n
log "styles " -c "purple" -bn
log "like" -c "white" -k "red" -b -n
log " " -n
log "this" -c "bright_green" -u -n
log ", " -n
log "Enjoy!" -lbu -c "bright_red"
log
log " ❤" -c "red" -n
log " Nathan + Saltuk" -c "red"
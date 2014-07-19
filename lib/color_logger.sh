#!/usr/bin/env zsh

typeset -A text_colors background_colors emphasis
typeset -a formatting

escape="\033[";
reset="${escape}0m";

text_colors=(
  default          "39"
  black            "30"
  red              "31"
  green            "32"
  yellow           "33"
  blue             "34"
  purple           "35"
  cyan             "36"
  white            "37"
  bright_red       "91"
  bright_green     "92"
  bright_yellow    "93"
  bright_blue      "94"
  bright_purple    "95"
  bright_cyan      "96"
  bright_white     "97"
)

background_colors=(
  default          "49"
  black            "40"
  red              "41"
  green            "42"
  yellow           "43"
  blue             "44"
  purple           "45"
  cyan             "46"
  white            "47"
  bright_black     "100"
  bright_red       "101"
  bright_green     "102"
  bright_yellow    "103"
  bright_blue      "104"
  bright_purple    "105"
  bright_cyan      "106"
  bright_white     "107"
)

emphasis=(
  default       "0"
  bold          "1"
  italics       "3"
  underline     "4"
  blink         "5"
  reverse       "7"
)



function log () {
  # check if message
  test -n "$1" || {
    echo;
    return;
  }

  #
  # Extract message
  #
  message=$1;
  shift;

  #
  # parse options
  #

  color="default";
  background_color="default";
  formatting+=("default");
  line_break="\n";

  while getopts ":c:k:biunlr" option; do
    case $option in
      c)
        color=$OPTARG;
        ;;
      k)
        background_color=$OPTARG;
        ;;
      b)
        formatting+=("bold")
        ;;
      i)
        formatting+=("italics")
        ;;
      u)
        formatting+=("underline")
        ;;
      l)
        formatting+=("blink")
        ;;
      r)
        formatting+=("reverse")
        ;;
      n)
        line_break="";
        ;;
    esac
  done

  #
  # build treatment
  #
  treatment="${escape}";
  for format in ${formatting[@]}
  do
    treatment="${treatment}${emphasis[$format]};"
  done
  # reset formatting array
  formatting=();
  treatment="${treatment}${text_colors[$color]};"
  treatment="${treatment}${background_colors[$background_color]}m"

  printf "${treatment}%s${reset}${line_break}" $message;
}
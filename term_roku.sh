#!/bin/bash
# Requirements... You must have curl installed for this script to work
# ............... make sure you set the execute bit on file.    chmod +x term_roku.sh
# ............... when starting term_roku.sh you have to include the IP address of your Roku.
# ............... to run    ./term_roku.sh rokuIP 
while :
do
    clear
    cat<<EOF
 _______________________
|                       |
|   Bash Roku Remote    |
|_______________________|
|       |       |       |
|   7   |   8   |   9   |
|  Home |   Up  |  Back |
|_______|_______|_______|
|       |       |       |
|   4   |   5   |   6   |
|  Left |   Ok  | Right |
|_______|_______|_______|
|       |       |       |
|   1   |   2   |   3   |
|   RW  |  Down |   FF  |
|_______|_______|_______|
|       |       |       |
|   X   |   0   |   -   |
|  Exit |  Play |  bk40 |
|_______|_______|_______|
EOF
    read -n1 -s
    case "$REPLY" in
    "1")  curl -d "" "http://$1:8060/keypress/rev";;
    "2")  curl -d "" "http://$1:8060/keypress/down";;
    "3")  curl -d "" "http://$1:8060/keypress/fwd";;
    "4")  curl -d "" "http://$1:8060/keypress/left";;
    "5")  curl -d "" "http://$1:8060/keypress/select";;
    "6")  curl -d "" "http://$1:8060/keypress/right";;
    "7")  curl -d "" "http://$1:8060/keypress/home";;
    "8")  curl -d "" "http://$1:8060/keypress/up";;
    "9")  curl -d "" "http://$1:8060/keypress/back";;
    "0")  curl -d "" "http://$1:8060/keypress/play";;
    "-")  curl -d "" "http://$1:8060/keypress/InstantReplay";;
    "X")  exit                      ;;
    "x")  echo "case sensitive!!"   ;; 
     * )  echo "invalid option"     ;;
    esac
    sleep .05
done

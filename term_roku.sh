#!/bin/bash
# Dependencies... You must have  curl  installed for this script to work
# ............... make sure you set the execute bit on file.    
# ............... to set execute bit type    chmod +x term_roku.sh
# ............... when starting term_roku.sh you have to include the IP address of your Roku.
# ............... to run (if in the directory of the script)   ./term_roku.sh rokuIP
# ............... if the script is in the path   rokutv.sh rokuIP


# roku

while :
do
#    clear
    cat<<EOF
 on-p off-P  - vDN    + vUP
 ===========================
| 7 home | 8 UP   | 9 back  |
|========|========|=========|
| 4 LEFT | 5 OK   | 6 RIGHT |
|========|========|=========|
| 1 rw   | 2 DOWN | 3 ff    |
 ========|========|=========
  q quit   0 Play   * optns
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
#   ".")  curl -d "" "http://$1:8060/keypress/InstantReplay";;
    "-")  curl -d "" "http://$1:8060/keypress/volumedown";;
    "+")  curl -d "" "http://$1:8060/keypress/volumeup";;
    "P")  curl -d "" "http://$1:8060/keypress/poweroff";;
    "p")  curl -d "" "http://$1:8060/keypress/poweron";;
    "*")  curl -d "" "http://$1:8060/keypress/info";;	    
    "q")  exit                      ;;
    "Q")  echo "case sensitive!!"   ;;
     * )  echo "invalid option"     ;;
    esac
    sleep .05
done

# terminalrokuremote
A small script to send remote commands to your Roku over the lan using the number keypad

Requirements:

You must have curl installed for this script to work

Make sure you set the execute bit on file.    chmod +x term_roku.sh

When starting term_roku.sh you have to include the IP address of your Roku.


 on-p off-P  - vDN    + vUP
 ===========================
| 7 home | 8 UP   | 9 back  |
|========|========|=========|
| 4 LEFT | 5 OK   | 6 RIGHT |
|========|========|=========|
| 1 rw   | 2 DOWN | 3 ff    |
 ========|========|=========
  q quit   0 Play   * optns
  
  
  
# Dependencies... You must have  curl  installed for this script to work
# ............... make sure you set the execute bit on term_roku.sh    
# ............... to set execute bit type    chmod +x term_roku.sh
# ............... when starting term_roku.sh you have to include the IP address of your Roku.
# ............... to run (if in the directory of the script)   ./term_roku.sh rokuIP
# ............... if the script is in the path   rokutv.sh rokuIP

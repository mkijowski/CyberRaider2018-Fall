# Welcome to Cyber Raider 2018!

### Rules

1 Nothing illegal
2 Stay inside the battle space (10.0.0.0/24)
3 If you have questions, ask your mentor (or room monitor)

### Getting started

1 The IP address that was given to your team at the registration table
2 Launch bash for windows by first holding down the windows key and hitting R
3 Type `cmd` into the windows run prompt that comes up and hit enter to launch the windows command prompt
4 Type `bash` into the cmd prompt and then Enter to launch bash for windows
5 Type `cd ~` then Enter to Change Directory (cd) into your home directory (~)
6 Download the SSH private key[Farmer Joe's SSH key](fj.key) with the following command `wget LINK`
7 SSH keys wont be trusted if they dont have the correct permissions.  Change yours with `chmod 600 fj.key`
8 SSH into your battlespace with the following: `ssh -i fj.key farmerjoe@YOUR IP ADDRESS` substituting the IP given to you at the registration table for `YOUR IP ADDRESS`
9 You are welcome to have more than one person signed into your battlespace at a time
10 Have fun!

### Useful linux tips
One of the most important commands in linux is the `man` command.  Typing `man` followed by the name of another command shows you the online manual for that command (for example, `man ls` shows you the manual for the `ls` command.
* You can search a man page by typing `/` followed by the words you are looking for.
* `n` will take you to the next occurence of your last search
* `p` will take you to the previous occurence of your last serach
* `q` will exit out of the man page

Each challenge provides you with a list of possibly helpful linux commands.  If you get stuck or are unsure about what a command does just check that command's `man` page.

The next most important command isn't so much a command as it is a shortcut.  `Ctrl` + `c` or shorthand `^c` means hold down the Ctrl key and type the letter `c`.  This shortcut sends a signal to the current process telling it to stop.
There are several commands used throughout this competition that may take a while (minutes) and if mistyped could run indefinitely.  Use `ctrl` + `c` to stop these commands.

### Challenge 1 - Find the flags
Farmer Joe has hidden several flags (coins) around his OS.  Use the clues to recover them.

#### Clues

##### Flag 1 - readme
The first flag is stored in a file called **readme** located in the home directory `/home/farmerjoe`
###### Helpful commands
`cd, ls, cat, head, tail, pwd`


##### Flag 2 - 
The second flag is stored in a file called **-** located in the home directory `/home/farmerjoe` 
###### Helpful commands
`cd, ls, cat, file, du`


##### Flag 3 - space
Flag 4 is stored in a file called **spaces in this filename** in the home directory
###### Helpful commands
`cd, ls, cat, file`


##### Flag 4 - execute
This flag is output when you run the **execute_me** program in the home directory.
###### Helpful commands
`cd, ls, cat, file`


##### Flag 5 - hidden
The next flag is stored in a hidden file in the **hidden** directory.
###### Helpful commands
`cd, ls, cat, file, find`


##### Flag 6 - lost
This flag is hidden somewhere in the **lost** directory in a file that is exactly 503 bytes.
###### Helpful commands
`cd, ls, cat, file, find, du`


##### Flags 7 & 8 - alike
Two files in the **alike** directory have the same contents.  Flags 7 and 8 are the names of these two files.
###### Helpful commands
`cd, ls, md5sum, diff`


##### Flag 9 - 
Something on your localhost is listening on port 10000. I wonder what it wants to tell you? 
###### Helpful commands
`cat, nc, wget`

##### Flag 10 - 
Flag 10 is cr18{ddb27bb966d3f3644a38a026c5e33c1a}.  I wonder where I got these hashes?
###### Helpful commands
`???, md5sum, /usr/share/dict/american-english, for`

### Challenge 2 - The rest of the farm
Now that you are getting familiar with Farmer Joe's local linux system, lets take a look at his coin server (IP address: 10.0.0.35).  There are flags associated with all open ports, can you find them?
###### Helpful commands
`nc, nmap, wget, ssh`


### Challenge 3 - Shut it down
Dr. Doom is up to his old tricks!  He's installed a reverse shell on Farmer Joe's server AND he is stealing Farmer Joe's hard earned coins.  
Find a way to stop the flow of coins (the longer it takes the more coins you lose.  Bonus points if you can still ssh into the 10.0.0.35 when challenge 4 is complete).
##### Helpful commands
`nmap, nc, iptables, iptables-save, iptables-restore,` 

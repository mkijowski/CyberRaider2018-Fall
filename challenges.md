### Challenge 1 - Find the flags
Farmer Joe has hidden several flags (coins) around his OS.  Use the clues to recover them.

##### Hints
* If you get stuck on one challenge skip it and come back.
* Don't forget to check the `man` pages of any of the possible helpful commands!

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
Flag 3 is stored in a file called **spaces in this filename** in the home directory `~/`
###### Helpful commands
`cd, ls, cat, file`

##### Flag 4 - hidden
The next flag is stored in a hidden file in the **hidden** directory.
###### Helpful commands
`cd, ls, cat, file, find`

##### Flag 5 - execute
This flag is output when you run the **execute_me** program in the home directory.
###### Helpful commands
`cd, ls, cat, file`

##### Flag 6 - It wasn't me...
You will need to use the **setuid** program for this challenge.  The next flag is stored in a file named **readme** in Farmer **Bob's** home directory `/home/farmerbob/readme`.
###### Helpful commands
`whoami, cd, ls, cat`

##### Flag 7 - lost
This flag is hidden somewhere in the **lost** directory in a file that is exactly 503 bytes.
###### Helpful commands
`cd, ls, cat, file, find, du`


##### Flags 8 & 9 - alike
Two files in the **alike** directory have the same contents.  Flags 8 and 9 are the names of these two files.
###### Helpful commands
`cd, ls, md5sum, diff`


##### Flag 10 - 
Something on your localhost is listening on port 10000. I wonder what it wants to tell you? 
###### Helpful commands
`cat, nc, wget`

##### Flag 11 - 
Flag 11 is cr18{ddb27bb966d3f3644a38a026c5e33c1a}.  I wonder where I got these hashes?
###### Helpful commands
`???, md5sum, /usr/share/dict/american-english, for`

### Challenge 2 - The rest of the farm
Now that you are getting familiar with Farmer Joe's local linux system, lets take a look at his coin server (IP address: 10.0.0.35).  There are flags associated with all open ports, can you find them?

This challenge involves starting off with a scan of the given IP address.  I recommend looking into some basice nmap tutorials on google before getting started ;)

###### Helpful commands
`nmap, nc, wget, ssh, telnet`

### Challenge 3 - Lock it down
Dr. Doom is up to his old tricks!  He's installed a reverse shell on Farmer Joe's server AND he is stealing Farmer Joe's hard earned coins.  
Find a way to stop the flow of coins (the longer it takes the more coins you lose).

Hints:
* Dr. Doom's evil cyber lair is @ 10.0.0.241 
* It's stealing keys from your server @ 10.0.0.35 (probably want to stop your server from talking to it...)
* By any means necessary...
* Dr. Doom takes a key every 5 minutes, points are awarded for speed in preventing that

##### Helpful commands
`nmap, nc, ps, whoami,  iptables, iptables-save, iptables-restore` 

### Challenge 4 - This ransom of mine
Some of you may have thwarted Dr. Doom, others lost all their keys...  Either way it wasn't enough to drive Doom away.

Dr. Doom has discovered the secret to Farmer Joe's crypto currency, each coin is generated with a dictionary word from `/usr/share/dict/american-english`, but he is not happy with the keys he has stolen from you, he needs something more valuable...

* Keys that begin with the character `0`  (zero) are more valuable than keys that do not begin with `0`.
* Keys that begin with `00` are more valuable than those that just begin with `0`, and those that begin with `000` are more valualbe still.
* Example: `cr18{000abcdefghijklmnopawqegjtiaosow}` is better than `cr18{012abcdefghijklmnopawqegjtiaosow}'

Dr. Doom demands you generate more keys for him, but he doesnt trust you to give him a valid key in cr18{key} format.

Instead you must give him the following:
* 1 word from `/usr/share/dict/american-english`
* 1 positive (>= 0) integer value
* example: `dog123` generates `cr18{b6e48ff0ce35a5a6b353a0ae999de759}` (which is worthless do Doom).

Doom will then generate the coin and reward you (IF that coin is at the current challenge level).  Each time a more difficult coin is found all scores are reset.

Current challenge level is `00` which means the generated hash must begin with `cr18{00......`, the first person to find a more difficult coin (example: `cr18{000......}` increases the challenge level for ALL TEAMS.

Submit solutions via the following syntax:
* `coins123`  `cr18{120309e60431898938c259b924795d6f}`
* `word12345`  `cr18{892faa851e9d023155d648642085580c}`

##### Hints:
This challenge has multiple parts but boils down to creating your own (Kentucky Fried) Crypto coin miner:
* pick a word (any word) from `/usr/share/dict/american-english`
* write a loop to output a string of numbers

check out this hint from challenge 1: `echo "cr18{$(echo coins123 | md5sum | awk '{print $1}')}"`

##### Useful commands:
`nano, |, md5sum, /usr/share/dict/american-english`  [for loops in bash](https://ma.ttias.be/bash-loop-first-step-automation-linux/)




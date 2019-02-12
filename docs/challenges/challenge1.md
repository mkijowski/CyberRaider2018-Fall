i### Challenge 1 - Find the flags
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
Flag 3 is stored in a file called **spaces in this filename** in the home directory
###### Helpful commands
`cd, ls, cat, file`


##### Flag 4 - execute
This flag is output when you run the **execute_me** program in the home directory.
###### Helpful commands
`cd, ls, cat, file`


##### Flag 5 - It wasn't me...
You will need to use the **setuid** program for this challenge.  The next flag is stored in a file named **readme** in Farmer **Bob's** home directory `/home/farmerbob/readme`.
###### Helpful commands
`whoami, cd, ls, cat`


##### Flag 6 - hidden
The next flag is stored in a hidden file in the **hidden** directory.
###### Helpful commands
`cd, ls, cat, file, find`


##### Flag 7 - lost
This flag is hidden somewhere in the **lost** directory in a file that is exactly 503 bytes.
###### Helpful commands
`cd, ls, cat, file, find, du`


##### Flags 8 & 9 - alike
Two files in the **alike** directory have the same contents.  Flags 7 and 8 are the names of these two files.
###### Helpful commands
`cd, ls, md5sum, diff`


##### Flag 10 - thousand
Something on your localhost is listening on port 10000. I wonder what it wants to tell you? 
###### Helpful commands
`cat, nc, wget`

##### Flag 11 - more !!?! 
Flag 10 is the output of `echo "cr18{$(echo "coins" | md5sum | sed -e "s/  -//" )}"` 
I wonder where I got the rest of the hashes?
###### Helpful commands
`nano, |, md5sum, /usr/share/dict/american-english`  [for loops in bash](https://ma.ttias.be/bash-loop-first-step-automation-linux/)



### Challenge 1 - Find the flags
Farmer Joe has hidden several flags around his OS.  Use the clues to recover them.

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
Now that you are getting familiar with Farmer Joe's local linux system, lets take a look at his network.
###### Helpful commands
`nc, nmap, wget, ssh`

There are keys associated with all open ports, can you find them?
80
22
1337
10000/11000


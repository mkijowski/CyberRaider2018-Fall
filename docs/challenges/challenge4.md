### Challenge 4 - This ransom of mine
Some of you may have thwarted Dr. Doom, others lost all their keys...  Either way it wasn't enough to drive Doom away.

Dr. Doom has discovered the secret to Farmer Joe's crypto currency, each coin is generated with a dictionary word from `/usr/share/dict/american-english`, but he is not happy with the keys he has stolen from you, he needs something more valuable...

* Keys that begin with the character `0`  (zero) are more valuable than keys that do not begin with `0`.
* Keys that begin with `00` are more valuable than those that just begin with `0`, and those that begin with `000` are more valualbe still.
* Example: `cr18{000abcdefghijklmnopawqegjtiaosow}` is better than `cr18{012abcdefghijklmnopawqegjtiaosow}'

Dr. Doom demands you generate more keys for him, but he doesnt trust you to give him a valid key in cr18{key} format.

Instead you must give him the following:
* 1 word from `/usr/share/dict/american-english`
* 1 integer value
* example: `dog123` generates `cr18{b6e48ff0ce35a5a6b353a0ae999de759}` (which is worthless do Doom).

Doom will then generate the coin and reward you (IF that coin is at the current challenge level).  Each time a more difficult coin is found all scores are reset.

Current challenge level is `00` which means the generated hash must begin with `cr18{00......`, the first person to find a more difficult coin (example: `cr18{000......}` increases the challenge level for ALL TEAMS.

Submit solutions to slack via the following syntax:
* `dog123`  `cr18{b6e48ff0ce35a5a6b353a0ae999de759}`
* `word12345`  `cr18{892faa851e9d023155d648642085580c}`

##### Hints:
This challenge has multiple parts but boils down to creating your own Kentucky Fried Crypto coin miner:
* pick a word (any word) from `/usr/share/dict/american-english`
* write a loop to output a string of numbers

check out this hint from challenge 1: `echo "cr18{$(echo "coins" | md5sum )}"` 

##### Useful commands:
`nano, |, md5sum, /usr/share/dict/american-english`  [for loops in bash](https://ma.ttias.be/bash-loop-first-step-automation-linux/)



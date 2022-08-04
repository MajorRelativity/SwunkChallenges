


## Clear Schedule:
schedule clear forbiddenblocks:loop

## Scoreboards
scoreboard objectives add fbHealth dummy 
scoreboard objectives add VariablesI dummy
scoreboard players set runCount VariablesI 1

## Bossbar:
# Create Bossbar:
bossbar add forbiddenblocks:health0 {"text":"Forbidden Resistance","color":"red"}
bossbar add forbiddenblocks:health1 {"text":"Forbidden Resistance","color":"red"}
bossbar add forbiddenblocks:health2 {"text":"Forbidden Resistance","color":"yellow"}
bossbar add forbiddenblocks:health3 {"text":"Forbidden Resistance","color":"yellow"}
bossbar add forbiddenblocks:health4 {"text":"Forbidden Resistance","color":"green"}
bossbar add forbiddenblocks:health5 {"text":"Forbidden Resistance","color":"green"} 

bossbar add forbiddenblocks:healthc0 {"text":"Forbidden Resistance","color":"blue"} 
bossbar add forbiddenblocks:healthc1 {"text":"Forbidden Resistance","color":"blue"} 
bossbar add forbiddenblocks:healthc2 {"text":"Forbidden Resistance","color":"blue"} 
bossbar add forbiddenblocks:healthc3 {"text":"Forbidden Resistance","color":"blue"} 
bossbar add forbiddenblocks:healthc4 {"text":"Forbidden Resistance","color":"blue"} 

# Max:
bossbar set forbiddenblocks:health0 max 5
bossbar set forbiddenblocks:health1 max 5
bossbar set forbiddenblocks:health2 max 5
bossbar set forbiddenblocks:health3 max 5
bossbar set forbiddenblocks:health4 max 5
bossbar set forbiddenblocks:health5 max 5
bossbar set forbiddenblocks:healthc0 max 5
bossbar set forbiddenblocks:healthc1 max 5
bossbar set forbiddenblocks:healthc2 max 5
bossbar set forbiddenblocks:healthc3 max 5
bossbar set forbiddenblocks:healthc4 max 5

# Color:
bossbar set forbiddenblocks:health0 color red
bossbar set forbiddenblocks:health1 color red
bossbar set forbiddenblocks:health2 color yellow
bossbar set forbiddenblocks:health3 color yellow
bossbar set forbiddenblocks:health4 color green
bossbar set forbiddenblocks:health5 color green
bossbar set forbiddenblocks:healthc0 color blue
bossbar set forbiddenblocks:healthc1 color blue
bossbar set forbiddenblocks:healthc2 color blue
bossbar set forbiddenblocks:healthc3 color blue
bossbar set forbiddenblocks:healthc4 color blue

# Value:
bossbar set forbiddenblocks:health0 value 0
bossbar set forbiddenblocks:health1 value 1
bossbar set forbiddenblocks:health2 value 2
bossbar set forbiddenblocks:health3 value 3
bossbar set forbiddenblocks:health4 value 4
bossbar set forbiddenblocks:health5 value 5
bossbar set forbiddenblocks:healthc0 value 0
bossbar set forbiddenblocks:healthc1 value 1
bossbar set forbiddenblocks:healthc2 value 2
bossbar set forbiddenblocks:healthc3 value 3
bossbar set forbiddenblocks:healthc4 value 4


## Schedule:
schedule function forbiddenblocks:loop 2s

## Load Message:
tellraw @a {"text":"[FB] The Redditer Challenge has been loaded","color":"dark_green","bold":true}
tellraw @a {"text":"[FB] You may not touch grass ... and some other blocks","color":"dark_green","bold":true}
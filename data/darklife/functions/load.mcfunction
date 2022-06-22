## Darklife:
# Forces the player to take refuge in the shadows. 
#They get benefits in the shadows, and cursed in the light.

## Scoreboard:
scoreboard objectives add LightSetting dummy

## Bossbar for Light Detection:
# (Bossbar NOT implemented right now, but the code is still here just in case we need it):

# bossbar add darklife:dark {"text":"Light Level: Dark","color":"blue","bold":true}
# bossbar add darklife:neutral {"text":"Light Level: Neutral","color":"gold","bold":true}
# bossbar add darklife:danger {"text":"Light Level: Bright","color":"red","bold":true}

# bossbar set darklife:dark color blue
# bossbar set darklife:neutral color yellow
# bossbar set darklife:danger color red

# bossbar set darklife:dark style notched_6
# bossbar set darklife:neutral style notched_6
# bossbar set darklife:danger style notched_6

# bossbar set darklife:dark max 6
# bossbar set darklife:neutral max 6
# bossbar set darklife:danger max 6

# bossbar set darklife:dark value 0
# bossbar set darklife:neutral value 3
# bossbar set darklife:danger value 6


## Clear Schedule
schedule clear darklife:loop

## Start Loop
schedule function darklife:loop 2s

## Message
tellraw @a {"text":"[DL] Dark Life has been loaded","color":"black","bold":true}
tellraw @a {"text":"[DL] The Sun is a Deadly Lazer","color":"black","bold":true}
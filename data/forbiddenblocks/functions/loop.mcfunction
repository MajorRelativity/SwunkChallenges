## loop2
# The main loop function

## Scoreboard:
execute as @a unless score @s fbHealth matches -6..6 run scoreboard players set @s fbHealth 5
execute if score runCount VariablesI matches 0..4 run scoreboard players add runCount VariablesI 1
execute if score runCount VariablesI matches 5 run scoreboard players set runCount VariablesI 0

## Remove Bossbars:
bossbar set forbiddenblocks:health0 players 
bossbar set forbiddenblocks:health1 players 
bossbar set forbiddenblocks:health2 players 
bossbar set forbiddenblocks:health3 players 
bossbar set forbiddenblocks:health4 players 
bossbar set forbiddenblocks:health5 players 

bossbar set forbiddenblocks:healthc0 players 
bossbar set forbiddenblocks:healthc1 players 
bossbar set forbiddenblocks:healthc2 players 
bossbar set forbiddenblocks:healthc3 players 
bossbar set forbiddenblocks:healthc4 players 

## Executes:

# Neutral Bossbar if Not Healing:
execute as @a[scores={fbHealth=..4}] at @s if block ~ ~-.9 ~ #forbiddenblocks:badblocks unless block ~ ~-.4 ~ #forbiddenblocks:badblocks run function forbiddenblocks:neutral
execute as @a[scores={fbHealth=..4}] at @s if block ~ ~-1.9 ~ #forbiddenblocks:badblocks unless block ~ ~-.9 ~ #forbiddenblocks:badblocks unless block ~ ~-.4 ~ #forbiddenblocks:badblocks run function forbiddenblocks:neutral

# Regen:
execute as @a[scores={fbHealth=..4}] at @s unless block ~ ~-.9 ~ #forbiddenblocks:badblocks unless block ~ ~-1.9 ~ #forbiddenblocks:badblocks run function forbiddenblocks:regen

# Damage:
execute as @a at @s if block ~ ~-.4 ~ #forbiddenblocks:badblocks run function forbiddenblocks:damage

## Schedule:
schedule function forbiddenblocks:loop 5t
## Damage:
# Damages the player if they are standing on a block. Kills them if their score is 0


## Kill if 0:
execute as @s if score @s fbHealth matches 0 run function forbiddenblocks:kill

## Damage:
scoreboard players remove @s fbHealth 1

## Bossbar:
execute if score @s fbHealth matches 0 run bossbar set forbiddenblocks:health0 players @s
execute if score @s fbHealth matches 1 run bossbar set forbiddenblocks:health1 players @s
execute if score @s fbHealth matches 2 run bossbar set forbiddenblocks:health2 players @s
execute if score @s fbHealth matches 3 run bossbar set forbiddenblocks:health3 players @s
execute if score @s fbHealth matches 4 run bossbar set forbiddenblocks:health4 players @s
execute if score @s fbHealth matches 5 run bossbar set forbiddenblocks:health5 players @s
## regen
# regenerates your fbhealth if you are not standing on a block

## Regen:
execute if score runCount VariablesI matches 0 run scoreboard players add @s fbHealth 1

## Bossbar:
execute if score @s fbHealth matches 0 run bossbar set forbiddenblocks:health0 players @s
execute if score @s fbHealth matches 1 run bossbar set forbiddenblocks:health1 players @s
execute if score @s fbHealth matches 2 run bossbar set forbiddenblocks:health2 players @s
execute if score @s fbHealth matches 3 run bossbar set forbiddenblocks:health3 players @s
execute if score @s fbHealth matches 4 run bossbar set forbiddenblocks:health4 players @s
execute if score @s fbHealth matches 5 run bossbar set forbiddenblocks:health5 players @s
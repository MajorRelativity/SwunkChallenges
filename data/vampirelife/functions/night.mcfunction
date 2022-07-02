## night
# Executes regeneration if it is nighttime

effect give @s regeneration 1 2 true
effect give @s saturation 1 2 true

tag @s remove died

scoreboard players add @s totalKills 1
scoreboard players remove @s kills 1
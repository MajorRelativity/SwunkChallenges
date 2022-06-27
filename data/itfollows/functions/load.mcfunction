

## Scoreboards:

# Position Objectives:
scoreboard objectives add xval dummy
scoreboard objectives add yval dummy
scoreboard objectives add zval dummy
scoreboard objectives add dval dummy

# Square Position Objectives
scoreboard objectives add xvalsq dummy
scoreboard objectives add yvalsq dummy
scoreboard objectives add zvalsq dummy

# Magnitude Position Objective:
scoreboard objectives add rposmag dummy

# Dummy Numbers:
scoreboard objectives add Number dummy
scoreboard players set 1000 Number 1000
scoreboard players set 2 Number 2
scoreboard players set 8 Number 8

# Variables:
scoreboard objectives remove VariablesI
scoreboard objectives add VariablesI dummy
scoreboard players set countLook VariablesI 0

# angel Score:
execute unless score angel xval matches ..1 unless score angel xval matches -1.. run scoreboard players set angel xval 0
execute unless score angel yval matches ..1 unless score angel yval matches -1.. run scoreboard players set angel yval 0
execute unless score angel zval matches ..1 unless score angel zval matches -1.. run scoreboard players set angel zval 0
execute unless score angel dval matches ..1 unless score angel dval matches -1.. run scoreboard players set angel dval 0

## Message:
tellraw @a {"text":"[IF] It Follows Has Been Loaded","color":"light_purple","bold":true}
tellraw @a {"text":"[IF] It never stops...","color":"light_purple","bold":true}
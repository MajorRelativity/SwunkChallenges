## load
# Loads vampirelife

## Scoreboards
scoreboard objectives add kills totalKillCount
scoreboard objectives add totalKills dummy
scoreboard objectives add deaths deathCount

# Night Checker:
scoreboard objectives remove VariablesI
scoreboard objectives add VariablesI dummy
scoreboard players set night VariablesI 0
scoreboard players set countM VariablesI 0

## Gamerule
gamerule doInsomnia false
gamerule playersSleepingPercentage 101
gamerule naturalRegeneration false

## Start Schedule
schedule function vampirelife:loop 2s

## Message
tellraw @a {"text":"[VL] The Vampire Life challenge has been loaded","color":"red","bold":true}
tellraw @a {"text":"[VL] You must kill to survive ...","color":"red","bold":true}
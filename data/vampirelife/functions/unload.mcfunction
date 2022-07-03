## unload
# unloads the vampirelife challenge

## Scoreboards
scoreboard objectives remove kills
scoreboard objectives remove totalKills
scoreboard objectives remove deaths
scoreboard objectives remove VariablesI

## Gamerule
gamerule doInsomnia true
gamerule playersSleepingPercentage 100
gamerule naturalRegeneration true

## Tags:
tag @a remove died

## Clear Schedule
schedule clear vampirelife:loop 

## Message:
tellraw @a {"text":"[VL] The Vampire Life challenge has been unloaded","color":"red","bold":true}
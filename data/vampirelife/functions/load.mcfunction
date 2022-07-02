## load
# Loads vampirelife

## Scoreboards
scoreboard objectives add kills totalKillCount
scoreboard objectives add totalKills dummy

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
say test
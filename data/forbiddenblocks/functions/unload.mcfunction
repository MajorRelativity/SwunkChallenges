## unloadfb
# Removes all of the stuf that has to do with Forbidden Block:


## Clear Schedule:
schedule clear forbiddenblocks:loop

## Scoreboards
scoreboard objectives remove fbHealth

## Bossbar:
bossbar remove forbiddenblocks:health0
bossbar remove forbiddenblocks:health1
bossbar remove forbiddenblocks:health2
bossbar remove forbiddenblocks:health3
bossbar remove forbiddenblocks:health4
bossbar remove forbiddenblocks:health5

bossbar remove forbiddenblocks:healthc0
bossbar remove forbiddenblocks:healthc1
bossbar remove forbiddenblocks:healthc2
bossbar remove forbiddenblocks:healthc3 
bossbar remove forbiddenblocks:healthc4

## Unload Message:
tellraw @a {"text":"[FB] The Redditer Challenge has been unloaded","color":"dark_green","bold":true}
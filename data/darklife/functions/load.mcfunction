

## Scoreboard:
scoreboard objectives add LightSetting dummy

## Clear Schedule
schedule clear darklife:loop

## Start Loop
schedule function darklife:loop 2s

## Message
tellraw @a {"text":"[DL] Dark Life has been loaded","color":"black","bold":true}
tellraw @a {"text":"[DL] The Sun is a Deadly Lazer","color":"black","bold":true}
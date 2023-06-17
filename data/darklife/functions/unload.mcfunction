## unload
# Unloads the darklife challenge

## Scoreboard:
scoreboard objectives remove LightSetting

## Remove Player Effects if Appropriate:
execute as @a if score @s VariablesC matches 3 run effect clear @s

## Message
tellraw @a {"text":"[DL] Dark Life has been unloaded","color":"black","bold":true}

## Clear Schedule
schedule clear darklife:loop


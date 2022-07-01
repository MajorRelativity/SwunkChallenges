## unload
# Unloads the itfollows program

## Scoreboards:

# Position Objectives:
scoreboard objectives remove xval 
scoreboard objectives remove yval 
scoreboard objectives remove zval 
scoreboard objectives remove dval 

# Square Position Objectives
scoreboard objectives remove xvalsq 
scoreboard objectives remove yvalsq 
scoreboard objectives remove zvalsq 

# Magnitude Position Objective:
scoreboard objectives remove rposmag 

# Dummy Numbers:
scoreboard objectives remove Number 

# Variables:
scoreboard objectives remove VariablesI

## Clear Schedule
schedule clear itfollows:loop
schedule clear itfollows:closefollow/lookcheckloop

## Message:
tellraw @a {"text":"[IF] It Follows Has Been UnLoaded","color":"light_purple","bold":true}
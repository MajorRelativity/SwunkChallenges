## loadsc.mcfunction:
# Description: Used to load the necessary scoreboards and loops for strangecurse to work

## Basic Function Documentation:
# death
# - death.mcfunction initiates the death process
# - deathportalc.mcfunction resets the scores and kicks off deathportalspread.mcfunction
# - deathportalspread.mcfunctino rotates the armor stand, counts the # of rotations, initiates deathportals.mcfunction
# - deathportals.mcfunction searches for a wall or floor and stores the location of the wall or floor to the score of the area effect cloud
# - scounttp.mcfunction moves the scout. It teleports the armor stand if a wall is found, restarts deathportals.mcfunction if dCountC is less than 30,
#   or restarts the process with deeathportalspread.mcfunction

## Kill Old Markers and Reset Scoreboard:
# Removes old armor stands and area affect clouds
scoreboard objectives remove VariablesI

## Scoreboard Creation:
# VariablesI is a scoreboard that contains all variables that contain simple information
# - deathIP_sc is 1 if a death is in progress, and 0 if it is not
# - dair_sc is used in deathportals.mcfunction
# - dCountC counts the # of times the area_effect_cloud scout is teleported in death
# - dCountS is used to count the # of times the portal armor stand searches for a wall or floor in death

# DummyNumber is a collection of comparison numbers
scoreboard objectives add VariablesI dummy
scoreboard players set deathIP_sc VariablesI 0
scoreboard players set dair_sc VariablesI 1
scoreboard players set dCountC VariablesI 0

scoreboard objectives add DummyNumber dummy
scoreboard players set one DummyNumber 1


## Test Purposes:
scoreboard objectives setdisplay sidebar VariablesI
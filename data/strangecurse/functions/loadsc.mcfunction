## loadsc.mcfunction:
# Description: Used to load the necessary scoreboards and loops for strangecurse to work

## Basic Function Documentation:
# death
# - death.mcfunction initiates the death process
# - deathportalc.mcfunction chooses the location for the portal
# - deathportals.mcfunctino is used to control the teleportation of the scout area_effect_cloud dscout_sc

## Kill Old Markers and Reset Scoreboard:
# Removes old armor stands and area affect clouds
scoreboard objectives remove VariablesI

## Scoreboard Creation:
# VariablesI is a scoreboard that contains all variables that contain simple information
# - deathIP_sc is 1 if a death is in progress, and 0 if it is not
# - dair_sc is used in deathportals.mcfunction
# - dCountS is a count variable used in the death sequence

# DummyNumber is a collection of comparison numbers
scoreboard objectives add VariablesI dummy
scoreboard players set deathIP_sc VariablesI 0
scoreboard players set dair_sc VariablesI 1
scoreboard players set dCountC VariablesI 0


## Test Purposes:
scoreboard objectives setdisplay sidebar VariablesI
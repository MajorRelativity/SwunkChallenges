## unload
# unloads the wild gravity challenge

## Scoreboards:
scoreboard objectives remove sneak
scoreboard objectives remove jumpcooldown
scoreboard objectives remove VariablesI 
scoreboard objectives remove ymotion

## Schedules:
# clear
schedule clear wildgravity:jump/loop1t
schedule clear wildgravity:killatsky/killloop
schedule clear wildgravity:flip/fliploop

## UnLoad Message:
tellraw @a {"text":"[WG] Wild Gravity has been unloaded","color":"dark_purple","bold":true}
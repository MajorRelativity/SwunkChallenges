## load
# loads the wild gravity challenge

## Scoreboards:
scoreboard objectives add sneak minecraft.custom:sneak_time 
scoreboard objectives add jumpcooldown dummy
scoreboard objectives add VariablesI dummy
scoreboard objectives add ymotion dummy
scoreboard players set Gravity VariablesI 0

## Schedules:
# clear
schedule clear wildgravity:jump/loop1t
schedule clear wildgravity:killatsky/killloop
schedule clear wildgravity:flip/fliploop

# add schedule
schedule function wildgravity:killatsky/killloop 10s
schedule function wildgravity:flip/fliploop 30s


## Load Message:
tellraw @a {"text":"[WG] Wild Gravity has been loaded","color":"dark_purple","bold":true}
tellraw @a {"text":"[WG] Expect to be living on the ceiling","color":"dark_purple","bold":true}
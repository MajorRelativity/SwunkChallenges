## startflip
# starts the flipping countdown

## Message
playsound entity.wither.spawn master @a ~ ~ ~ 100000 1.7
tellraw @a {"text":"[WG] Gravity flipping in 30 seconds","color":"dark_purple"}

## Schedule:
schedule function wildgravity:flip/flip 30s
schedule function wildgravity:flip/flip1 29s
schedule function wildgravity:flip/flip2 28s
schedule function wildgravity:flip/flip3 27s

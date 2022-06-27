## positionangel
# Puts the angel in the right spot and adds particles 

## Reposition Angel

# Teleport
execute store result entity @s Pos[0] double 1 run scoreboard players get angel xval
execute store result entity @s Pos[1] double 1 run scoreboard players get angel yval
execute store result entity @s Pos[2] double 1 run scoreboard players get angel zval

## Effects:

execute at @s run particle explosion_emitter ~ ~ ~ 0 0 0 1 5
execute at @s run playsound entity.warden.emerge master @a ~ ~ ~ 20 2
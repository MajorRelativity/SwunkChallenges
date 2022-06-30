## positionangel
# Puts the angel in the right spot and adds particles 

## Reposition Angel

# Teleport
execute store result entity @s Pos[0] double 1 run scoreboard players get angel xval
execute store result entity @s Pos[1] double 1 run scoreboard players get angel yval
execute store result entity @s Pos[2] double 1 run scoreboard players get angel zval

# Mark Area
execute as @s run function itfollows:closefollow/markarea
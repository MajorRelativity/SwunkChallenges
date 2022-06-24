## setangelposition:
# Set Angel Position to 1/2 of distance to player

## Set their vectors to 1/2 size

scoreboard players operation @s xval /= 2 Number
scoreboard players operation @s yval /= 2 Number
scoreboard players operation @s zval /= 2 Number

## Set Angel Position
scoreboard players operation angel xval += @s xval
scoreboard players operation angel yval += @s yval
scoreboard players operation angel zval += @s zval
scoreboard players operation angel dval = @s dval
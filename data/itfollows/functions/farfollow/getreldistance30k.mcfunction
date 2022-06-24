## getreldistance30k
# Sets the angels position if there is noone closer than 30k away
# At this point the y value is not significant

## Square Distance:
# Rename Position:
scoreboard players operation @s xvalsq = @s xval
scoreboard players operation @s zvalsq = @s zval

# Score Adjustment:
scoreboard players operation @s xvalsq /= 1000 Number
scoreboard players operation @s zvalsq /= 1000 Number

# Square Position:
scoreboard players operation @s xvalsq *= @s xvalsq
scoreboard players operation @s zvalsq *= @s zvalsq

# Sum Squares:
scoreboard players set @s rposmag 0
scoreboard players operation @s rposmag += @s xvalsq
scoreboard players operation @s rposmag += @s zvalsq
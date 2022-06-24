## getreldistance
# Finds the magnitude of the vector from the angel to the players

## Square Distance:
# Rename Position:
scoreboard players operation @s xvalsq = @s xval
scoreboard players operation @s yvalsq = @s yval
scoreboard players operation @s zvalsq = @s zval

# Square Position:
scoreboard players operation @s xvalsq *= @s xvalsq
scoreboard players operation @s yvalsq *= @s yvalsq
scoreboard players operation @s zvalsq *= @s zvalsq

# Sum Squares:
scoreboard players set @s rposmag 0
scoreboard players operation @s rposmag += @s xvalsq
scoreboard players operation @s rposmag += @s yvalsq
scoreboard players operation @s rposmag += @s zvalsq




# Note: Before getting unit vector, make another function to decide who has the smallest relative magnitude, 
# choose them to do the rest of the operations on!


# Note for what to get unit vector: Multiply xvalsq by 1000, divide by square magnitude, and square root the whole thing. 
# This will leave a three digit number that represents a 3 digit decimal for the x value of the relative position
# unit vector!. Simply multiply desired block scale value by this 3 digit # and divide by 1000
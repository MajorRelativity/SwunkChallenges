## getposition
# Gets the position of all players and stores it in a scoreboard.
# Due to max scoreboard size being about 2.1*10^9, the relative xval cannot be more than 30,000.


## Get Dimension:
execute as @s store result score @s dval run data get entity @s Dimension

## Get Position (scaled by x8 if in nether)

# Nether:
execute as @s if score @s dval matches 20 store result score @s xval run data get entity @s Pos[0] 8
execute as @s if score @s dval matches 20 store result score @s yval run data get entity @s Pos[1]
execute as @s if score @s dval matches 20 store result score @s zval run data get entity @s Pos[2] 8

# Else:
execute as @s unless score @s dval matches 20 store result score @s xval run data get entity @s Pos[0]
execute as @s unless score @s dval matches 20 store result score @s yval run data get entity @s Pos[1]
execute as @s unless score @s dval matches 20 store result score @s zval run data get entity @s Pos[2]

## Find Position Relative to Angel:

scoreboard players operation @s xval -= angel xval
scoreboard players operation @s yval -= angel yval
scoreboard players operation @s zval -= angel zval


## Tag For Players Further Than 30k out

# Players less than 30k
execute if score @s xval matches ..29999 run tag @s add not30k
execute if score @s zval matches ..29999 run tag @s add not30k
execute if score @s xval matches ..29999 run tag @s remove 30k
execute if score @s zval matches ..29999 run tag @s remove 30k

# Players more than 30k
execute if score @s xval matches 30000.. run tag @s remove not30k
execute if score @s zval matches 30000.. run tag @s remove not30k
execute if score @s xval matches 30000.. run tag @s add 30k
execute if score @s zval matches 30000.. run tag @s add 30k



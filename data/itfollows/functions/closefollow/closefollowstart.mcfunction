## closefollowstart
# Starts the process of the angel appearing in game

## Schedule:
schedule clear itfollows:loop
schedule function itfollows:closefollow/restartloop 120s

## Kill Old Angels:
kill @e[type=armor_stand,name="angel"]

## Summon Angel:

# Summon:
execute if score angel dval matches 20 in minecraft:the_nether run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,CustomName:'{"text":"angel"}'}
execute if score angel dval matches 19 in minecraft:overworld run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,CustomName:'{"text":"angel"}'}
execute if score angel dval matches 17 in minecraft:the_end run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,CustomName:'{"text":"angel"}'}

# Reposition:
execute as @e[type=armor_stand,name="angel"] run function itfollows:closefollow/positionangel

## Schedule Looking Checker:
schedule function itfollows:closefollow/lookcheckloop 2s

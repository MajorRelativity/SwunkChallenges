## sortdistance:
# finds smallest distance

## Create Minimum Score:
scoreboard players set mindistance rposmag 2147483647

## Compare with Players
scoreboard players operation mindistance rposmag < @a[tag=not30k] rposmag
scoreboard players operation @a[tag=not30k] rposmag -= mindistance rposmag

## Give tag to lowest score:
tag @r[scores={rposmag=0}] add close2angel

## Put Distance Back:
scoreboard players operation @p[tag=close2angel] rposmag += mindistance rposmag

## Run CLoseful if Applicable
execute if entity @p[tag=close2angel,scores={rposmag=..10000}] run function itfollows:closefollow/closefollowstart
## sortdistance30k:
# finds smallest distance

## Create Minimum Score:
scoreboard players set mindistance rposmag 2147483647

## Compare with Players
scoreboard players operation mindistance rposmag < @a rposmag
scoreboard players operation @a rposmag -= mindistance rposmag

## Give tag to lowest score:
tag @r[scores={rposmag=0}] add close2angel

execute at @e[type=armor_stand,name="playerstand"] run particle minecraft:block redstone_block ~ ~1 ~ .1 .1 .1 5 30 normal
execute at @e[type=armor_stand,name="playerstand"] run particle minecraft:explosion ~ ~ ~ .2 .2 .2 3 30

kill @e[type=armor_stand,name="playerstand"]
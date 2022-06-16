##playerexplode
# Kills the playerstand with an explosion

execute at @e[type=armor_stand,name="playerstand"] run particle minecraft:dust 1 0 0 5 ~ ~ ~ 1 1 1 5 30 normal
execute at @e[type=armor_stand,name="playerstand"] run particle minecraft:explosion ~ ~ ~ .2 .2 .2 3 30
execute at @e[type=armor_stand,name="playerstand"] run playsound minecraft:vineboom master @a ~ ~ ~ 100
 
kill @e[type=armor_stand,name="playerstand"]
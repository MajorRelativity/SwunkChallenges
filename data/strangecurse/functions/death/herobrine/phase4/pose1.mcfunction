# Playerstand Pose 1
data merge entity @e[type=armor_stand,name="playerstand",limit=1] {Pose:{LeftLeg:[302f,216f,242f]}}
execute at @e[type=armor_stand,name="playerstand",limit=1] run particle minecraft:block redstone_block ~ ~1 ~ .1 .1 .1 5 30 normal
execute at @e[type=armor_stand,name="playerstand",limit=1] run playsound minecraft:entity.wither.break_block master @a[distance=..20] ~ ~ ~ 2 .7 1
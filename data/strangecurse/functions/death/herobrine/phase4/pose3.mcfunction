# Playerstand Pose 3
data merge entity @e[type=armor_stand,name="playerstand",limit=1] {ShowArms:1b,Pose:{Head:[0f,182f,338f],LeftLeg:[302f,216f,242f],RightLeg:[99f,215f,107f],LeftArm:[239f,27f,0f],RightArm:[248f,118f,298f]}}
execute at @e[type=armor_stand,name="playerstand",limit=1] run particle minecraft:block redstone_block ~ ~1 ~ .1 .1 .1 5 30 normal
execute at @e[type=armor_stand,name="playerstand",limit=1] run playsound minecraft:entity.wither.break_block master @a[distance=..20] ~ ~ ~ 2 1.3 1
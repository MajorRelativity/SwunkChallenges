## findlight
# Runs the appropriate for the effect depending on the player's light level

execute as @s if predicate darklife:light0to3 unless score @s LightSetting matches 1 run function darklife:lighteffects/0to3
execute as @s if predicate darklife:light4to5 unless score @s LightSetting matches 2 run function darklife:lighteffects/4to5
execute as @s if predicate darklife:light6to7 unless score @s LightSetting matches 3 run function darklife:lighteffects/6to7
execute as @s if predicate darklife:light8to9 unless score @s LightSetting matches 4 run function darklife:lighteffects/8to9
execute as @s if predicate darklife:light10to12 unless score @s LightSetting matches 5 run function darklife:lighteffects/10to12
execute as @s if predicate darklife:light13to14 unless score @s LightSetting matches 6 run function darklife:lighteffects/13to14
execute as @s if predicate darklife:light15 unless score @s LightSetting matches 7 run function darklife:lighteffects/15

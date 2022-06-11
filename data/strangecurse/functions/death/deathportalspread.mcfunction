## deathportalspread.mcfunction
# Rotates the armor stand and sends out an area effect cloud to look for a wall
# Count and Score Key (dCountS and "dportal_sc" score):
# 1 = positive x
# 2 = negative x
# 3 = positive z
# 4 = negative z
# 5 = positive y
# 6 = negative y
# 7 = no wall or floor, maintain position

## Score Reset:
scoreboard players set dCountC VariablesI 0
scoreboard players add dCountS VariablesI 1

## Rotation of Armor Stand:
execute as @e[type=armor_stand,name="dportal_sc"] at @s rotated ~90 ~ run tp ~ ~ ~
execute if score dCountS VariablesI matches 5 as @e[type=armor_stand,name="dportal_sc"] at @s rotated ~ ~-90 run tp ~ ~ ~
execute if score dCountS VariablesI matches 6 as @e[type=armor_stand,name="dportal_sc"] at @s rotated ~ ~180 run tp ~ ~ ~

## Resumon Area Effect Cloud:
kill @e[type=area_effect_cloud,name="dscout_sc"]
execute as @e[type=armor_stand,name="dportal_sc"] at @s run summon area_effect_cloud ~.5 ~.5 ~.5 {CustomName:'[{"text":"dscout_sc"}]',Duration: 100}
execute unless score dCountS VariablesI matches 7 run schedule function strangecurse:death/deathportals 1t

## If no Wall or Floor is Found:
execute if score dCountS VariablesI matches 7 run scoreboard players set @e[type=armor_stand,name="dportal_sc"] VariablesI 7
execute if score dCountS VariablesI matches 7 as @e[type=armor_stand,name="dportal_sc"] run function strangecurse:death/alignportal/alignportal
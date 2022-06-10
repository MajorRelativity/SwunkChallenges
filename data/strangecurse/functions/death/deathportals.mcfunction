## deathportals.mcfunction
# Desctiption: Used to control the teleportation of the scout area_effect_cloud dscout_sc

## Look for Wall:
say deathportals running
scoreboard players set @e[type=area_effect_cloud,name="dscout_sc"] VariablesI 0
execute as @e[type=area_effect_cloud,name="dscout_sc"] at @s unless block ~1 ~ ~ #strangecurse:nonsolid run scoreboard players set @e[type=area_effect_cloud,name="dscout_sc"] VariablesI 1 
execute as @e[type=area_effect_cloud,name="dscout_sc"] at @s unless block ~-1 ~ ~ #strangecurse:nonsolid run scoreboard players set @e[type=area_effect_cloud,name="dscout_sc"] VariablesI 2
execute as @e[type=area_effect_cloud,name="dscout_sc"] at @s unless block ~ ~ ~1 #strangecurse:nonsolid run scoreboard players set @e[type=area_effect_cloud,name="dscout_sc"] VariablesI 3 
execute as @e[type=area_effect_cloud,name="dscout_sc"] at @s unless block ~ ~ ~-1 #strangecurse:nonsolid run scoreboard players set @e[type=area_effect_cloud,name="dscout_sc"] VariablesI 4 
execute if score dCountS VariablesI matches 5 as @e[type=area_effect_cloud,name="dscout_sc"] at @s unless block ~ ~1 ~ #strangecurse:nonsolid run scoreboard players set @e[type=area_effect_cloud,name="dscout_sc"] VariablesI 5
execute if score dCountS VariablesI matches 5 as @e[type=area_effect_cloud,name="dscout_sc"] at @s unless block ~ ~-1 ~ #strangecurse:nonsolid run scoreboard players set @e[type=area_effect_cloud,name="dscout_sc"] VariablesI 6

## Teleport:
execute as @e[type=area_effect_cloud,name="dscout_sc"] run function strangecurse:death/scouttp

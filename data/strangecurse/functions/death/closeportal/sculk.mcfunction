# Creates the sculk and moves the clouds further out:



execute if score dCountSculk VariablesI matches 5.. as @e[type=area_effect_cloud,name="sculkexp"] at @s run setblock ~ ~ ~ sculk
execute as @e[type=area_effect_cloud,name="sculkexp"] at @s run tp ^ ^ ^.8

scoreboard players add dCountSculk VariablesI 1

execute unless score dCountSculk VariablesI matches 25 run schedule function strangecurse:death/closeportal/sculk 1t
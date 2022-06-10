## scouttp.mcfunction:
# Teleports the scout and reschedules the scout function. If wall found, teleports portal armor stand.
# If this is repeated 30 times, the stand sends out a new scout

# If score is 0
execute if score @s VariablesI matches 0 at @s rotated as @e[type=armor_stand,name="dportal_sc"] run tp ^ ^ ^1
execute if score @s VariablesI matches 0 run scoreboard players add dCountC VariablesI 1 
execute if score @s VariablesI matches 0 unless score dCountC VariablesI matches 30 run schedule function strangecurse:death/deathportals 1t

# If count reaches 30:
execute if score dCountC VariablesI matches 30 run schedule function strangecurse:death/deathportalspread 5t

# If score is not 0:
execute if score @s VariablesI matches 1 at @s run tp @e[type=armor_stand,name="dportal_sc"] ~ ~ ~
execute if score @s VariablesI matches 1 run scoreboard players set @e[type=armor_stand,name="dportal_sc"] VariablesI 1

execute if score @s VariablesI matches 2 at @s run tp @e[type=armor_stand,name="dportal_sc"] ~ ~ ~
execute if score @s VariablesI matches 2 run scoreboard players set @e[type=armor_stand,name="dportal_sc"] VariablesI 2

execute if score @s VariablesI matches 3 at @s run tp @e[type=armor_stand,name="dportal_sc"] ~ ~ ~
execute if score @s VariablesI matches 3 run scoreboard players set @e[type=armor_stand,name="dportal_sc"] VariablesI 3

execute if score @s VariablesI matches 4 at @s run tp @e[type=armor_stand,name="dportal_sc"] ~ ~ ~
execute if score @s VariablesI matches 4 run scoreboard players set @e[type=armor_stand,name="dportal_sc"] VariablesI 4

 
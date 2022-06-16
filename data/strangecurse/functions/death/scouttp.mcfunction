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
execute if score @s VariablesI matches 1.. at @s run tp @e[type=armor_stand,name="dportal_sc"] ~ ~ ~
execute if score @s VariablesI matches 1.. store result score @e[type=armor_stand,name="dportal_sc"] VariablesI run scoreboard players get @s VariablesI

execute if score @s VariablesI matches 1.. as @e[type=armor_stand,name="dportal_sc"] run function strangecurse:death/alignportal/alignportal

 
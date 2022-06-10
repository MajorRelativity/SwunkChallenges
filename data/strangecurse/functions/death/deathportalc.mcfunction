## deathportalc.mcfunction
# Description: chooses the location to spawn the death portal

## Clear Schedules and set Count:
scoreboard players set dCountC VariablesI 0
scoreboard players set dCountS VariablesI 0

## Armor Stand Rotation amd Scout Creation:
execute as @e[type=armor_stand,name="dportal_sc"] at @s run function strangecurse:death/deathportalspread
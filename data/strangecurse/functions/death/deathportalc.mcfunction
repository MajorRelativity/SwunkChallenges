## deathportalc.mcfunction
# Description: chooses the location to spawn the death portal

## Clear Schedules and add to Count:
scoreboard players add dCountC VariablesI 1

## Armor Stand Rotation amd Scout Creation:
execute as @e[type=armor_stand,name="dportal_sc"] at @s run function strangecurse:death/deathportalspread

## Area Effect Scout:


## Reschedule This:
#execute unless score dCountS VariablesI > twelve DummyNumber as @s run schedule function strangecurse:deathportalc 2s
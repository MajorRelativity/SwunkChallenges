## deathportalc.mcfunction
# Description: chooses the location to spawn the death portal

## Clear Schedules and add to Count:
schedule clear strangecurse:deathportals
scoreboard players add dCountS VariablesI 1

## Armor Stand:
execute rotated ~30 ~ run tp ~ ~ ~

## Area Effect Scout:
summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"dscout_sc"}]',Duration: 30}
execute rotated as @s as @e[type=area_effect_cloud,name="dscout_sc"] run function strangecurse:deathportals

## Reschedule This:
execute unless score dCountS VariablesI > twelve DummyNumber as @s run schedule function strangecurse:deathportalc 2s
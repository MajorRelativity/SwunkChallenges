## unloadsc.mcfunction
# Deletes all scoreboards, cancels all schedules, and removes all entities that have to do wtih strangecurse

## Kill Old Markers, Reset Scoreboard, and Clear Schedule:
# Removes old armor stands and area affect clouds
kill @e[type=area_effect_cloud,name="deathportal"]
kill @e[type=armor_stand,name="dportal_sc"]
kill @e[type=armor_stand,name="herobrine"]
kill @e[type=armor_stand,name="playerstand"]

#Scoreboard
scoreboard objectives remove VariablesI
scoreboard objectives remove kills
scoreboard objectives remove timeAfterMurder

# Schedule
schedule clear strangecurse:death/alignportal/runportalloop
schedule clear strangecurse:death/herobrine/phase1/phase1m
schedule clear strangecurse:death/herobrine/phase2/phase2m
schedule clear strangecurse:death/herobrine/phase3/phase3m
schedule clear strangecurse:loop60

# Tags:
tag @a remove murderer
tag @a remove herobrinemarked

## Tellraw:
tellraw @a {"text":"[&] StrangeCurse has been unloaded","color":"dark_red","bold":true}
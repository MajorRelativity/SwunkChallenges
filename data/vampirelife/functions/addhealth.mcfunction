## addhealth
# Adds health effect to player and plays sound effect

## Scoreboard:
scoreboard players remove @s totalKills 4
execute if score @s totalKills matches ..0 run scoreboard players set @s totalKills 0

## Add Health
execute if score countM VariablesI matches 1 run effect give @s health_boost 600 0 true
execute if score countM VariablesI matches 2 run effect give @s health_boost 600 1 true
execute if score countM VariablesI matches 3 run effect give @s health_boost 600 2 true
execute if score countM VariablesI matches 4 run effect give @s health_boost 600 3 true
execute if score countM VariablesI matches 5 run effect give @s health_boost 600 4 true
execute if score countM VariablesI matches 6 run effect give @s health_boost 600 5 true
execute if score countM VariablesI matches 7 run effect give @s health_boost 600 6 true
execute if score countM VariablesI matches 8 run effect give @s health_boost 600 7 true
execute if score countM VariablesI matches 9 run effect give @s health_boost 600 8 true
execute if score countM VariablesI matches 10 run effect give @s health_boost 600 9 true

## Sound Effect:
execute if score countM VariablesI matches 1 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.1
execute if score countM VariablesI matches 2 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.2
execute if score countM VariablesI matches 3 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.3
execute if score countM VariablesI matches 4 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.4
execute if score countM VariablesI matches 5 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
execute if score countM VariablesI matches 6 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.6
execute if score countM VariablesI matches 7 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.7
execute if score countM VariablesI matches 8 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.8
execute if score countM VariablesI matches 9 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.9
execute if score countM VariablesI matches 10 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 2

## Instant Health:
effect give @s instant_health 1 100 true


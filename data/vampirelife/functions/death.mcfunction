## death
# Punished the player for dying by adding negative effects

execute at @s run playsound entity.wither.spawn player @s ~ ~ ~ 1 .5
scoreboard players set @s deaths 0
tag @s add died
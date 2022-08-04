## tpangeleffects
# Teleports the angel closer to the player with effects

## Kill if Close Enough:
execute at @s if entity @p[distance=..6] run execute as @p run function itfollows:closefollow/killplayer

## Teleport:
execute as @s at @s facing entity @p eyes run tp ^ ^ ^6

## Effects:
execute at @s run effect give @a[distance=..200] blindness 1 2 true
execute at @s run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 10 1.7

## Scoreboard:
scoreboard players set countLook VariablesI 0
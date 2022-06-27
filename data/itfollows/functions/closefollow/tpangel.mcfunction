## tpangel
# Teleports the angel closer to the player

## Kill if Close Enough:
execute at @s if entity @p[distance=..6] run execute as @p run function itfollows:closefollow/killplayer

## Teleport:
execute as @s at @s facing entity @p eyes run tp ^ ^ ^10

## Effects:
execute at @s run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 10 1.7

## Scoreboard:
scoreboard players set countLook VariablesI 0

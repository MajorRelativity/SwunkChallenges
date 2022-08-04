## killplayer
# Kills the player closest to the angel by sending them to way above in the nether roof

## Overworld (Create Particles and Play Sound)
execute at @s run playsound entity.enderman.teleport player @a ~ ~ ~ 2 .7
execute at @s run particle dragon_breath ~ ~1 ~ 0 0 0 .2 20 

## Nether (Teleport Player to Nether and Play Sound)
execute in the_nether run tp @s 0 2500 0
effect give @s levitation 100 30 true
execute at @s run playsound minecraft:limbo hostile @s ~ ~ ~ 

## Kill After 20 Seconds:
# tag used to tell kill command who to kill
tag @s add deadbyangel
schedule function itfollows:closefollow/killplayer2 20s






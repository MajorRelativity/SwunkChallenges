## startscare
# Runs the scare process:

## Summon Zombies:
execute as @s at @s run function strangecurse:scare/summonzombie

## Run Clock Sound:
stopsound @s music
stopsound @s record
execute at @s run playsound minecraft:clock record @s ~ ~ ~ 1000

## Tellraw:

tellraw @s {"text":"???: Murderer!","color":"dark_red","bold":true}
execute at @s run playsound minecraft:vineboom hostile @s ~ ~ ~ 1000

## Schedule Kill:
execute as @s at @s run schedule function strangecurse:scare/killzombies 59s
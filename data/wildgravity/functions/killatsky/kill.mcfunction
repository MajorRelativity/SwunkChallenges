## kill
# kills the player with the sky tag

## Tags
tag @s remove sky
tag @s add skydeath

## stopsound
stopsound @s * minecraft:limbo

## death and message
gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
tellraw @a [{"selector":"@s"},{"text":" flew out of the world"}]





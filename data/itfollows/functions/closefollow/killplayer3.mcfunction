## killplayer3
# exists so that killplayer 2 can target a specific player to kill

gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
tellraw @a [{"selector":"@s"},{"text":" could not run from their fate"}]
tag @s remove deadbyangel

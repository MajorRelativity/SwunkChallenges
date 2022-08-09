## kill
# Kills the player. Activated by damage.mcfunction

## Lightning Strike and Noise:
execute at @s run summon lightning_bolt ~ ~ ~
playsound minecraft:vineboom player @a ~ ~ ~ 10000 

## Kill Player:
gamerule showDeathMessages false
gamerule doImmediateRespawn true
kill @s
execute at @s if block ~ ~-.9 ~ minecraft:grass_block run tellraw @a [{"selector":"@s"},{"text":" tried to touch grass (fatal mistake)"}]
execute at @s if block ~ ~-.9 ~ minecraft:netherrack run tellraw @a [{"selector":"@s"},{"text":" tried to touch netherrack (fatal mistake)"}]
execute at @s if block ~ ~-.9 ~ minecraft:sand run tellraw @a [{"selector":"@s"},{"text":" tried to touch sand (fatal mistake)"}]
execute at @s if block ~ ~-.9 ~ minecraft:red_sand run tellraw @a [{"selector":"@s"},{"text":" tried to touch red sand (fatal mistake)"}]
execute at @s if block ~ ~-.9 ~ minecraft:sand run tellraw @a [{"selector":"@s"},{"text":" tried to touch sand (fatal mistake)"}]
execute at @s if block ~ ~-.9 ~ minecraft:snow_block run tellraw @a [{"selector":"@s"},{"text":" tried to touch snow (fatal mistake)"}]
execute at @s if block ~ ~-.9 ~ minecraft:snow run tellraw @a [{"selector":"@s"},{"text":" tried to touch snow (fatal mistake)"}]
execute at @s if block ~ ~-.9 ~ minecraft:ice run tellraw @a [{"selector":"@s"},{"text":" tried to touch ice (fatal mistake)"}]
gamerule showDeathMessages true
gamerule doImmediateRespawn false
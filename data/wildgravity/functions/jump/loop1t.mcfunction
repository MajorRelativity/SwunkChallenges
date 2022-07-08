## loop1t
# Checks for if a player sneaks and makes them jump if they do.
# Jump does not occur unless the player's motion is below the required level for them to be still

## Affirm Levitation
execute as @a if score @s jumpcooldown matches 12.. run effect give @a levitation 9999 20 true

## Get Motion:
execute as @a store result score @s ymotion run data get entity @s Motion[1] 100000

## Jump
execute as @a[scores={sneak=1..,jumpcooldown=12..,ymotion=..20581}] at @s run function wildgravity:jump/jump
execute as @a unless score @s jumpcooldown matches 12.. run scoreboard players add @s jumpcooldown 1
execute as @a unless score @s jumpcooldown matches 12.. run scoreboard players reset @s sneak

schedule function wildgravity:jump/loop1t 1t
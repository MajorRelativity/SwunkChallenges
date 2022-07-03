## jump
# resets the player sneak score and makes them jump

## Reset Score
scoreboard players reset @s sneak
scoreboard players set @s jumpcooldown 0

## Jump

effect clear @s levitation
effect give @s levitation 1 243 true

## Schedule:
schedule function wildgravity:jump/postjump 5t


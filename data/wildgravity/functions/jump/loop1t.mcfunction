## loop1t
# Checks for if a player sneaks and makes them jump if they do

execute as @a[scores={sneak=1..,jumpcooldown=10}] at @s unless block ~ ~2 ~ #wildgravity:nonsolid run function wildgravity:jump/jump
execute as @a unless score @s jumpcooldown matches 10.. run scoreboard players add @s jumpcooldown 1
execute as @a unless score @s jumpcooldown matches 10.. run scoreboard players reset @s sneak

schedule function wildgravity:jump/loop1t 1t
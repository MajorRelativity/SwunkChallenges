## removeplayertags
# Removes all tags associated with death, resets the player, and kills the player.

## Remove tags:
tag @s remove herobrinemarked
tag @s remove murderer

## Reset Scores:
scoreboard players reset @s kills
scoreboard players reset @s timeAfterMurder

## Kill Player:
kill @s
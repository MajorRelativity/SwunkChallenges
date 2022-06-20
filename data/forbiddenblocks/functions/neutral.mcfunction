## neutral
# Sets the bossbar to neutral if the players are not healing or being damaged, but a block is near

## Bossbar:
execute if score @s fbHealth matches 0 run bossbar set forbiddenblocks:healthc0 players @s
execute if score @s fbHealth matches 1 run bossbar set forbiddenblocks:healthc1 players @s
execute if score @s fbHealth matches 2 run bossbar set forbiddenblocks:healthc2 players @s
execute if score @s fbHealth matches 3 run bossbar set forbiddenblocks:healthc3 players @s
execute if score @s fbHealth matches 4 run bossbar set forbiddenblocks:healthc4 players @s
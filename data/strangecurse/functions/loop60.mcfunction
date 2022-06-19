## loop60
# The main loop function that controls everything that is time dependent.
# If you kill to many things, you will be marked for the death process.

## Scoreboards:
# Keep Track of Murders:
execute as @a if score @s kills matches 5.. run tag @s add murderer
execute as @a[tag=murderer] run scoreboard players add @s timeAfterMurder 1

# Murder Scare:


# Death sequence for random murderer with murdertime over 30. Also makes so death can't happen within three minutes of each other:
execute unless score deathIP_sc VariablesI matches 1.. run tag @a remove herobrinemarked
execute unless score deathIP_sc VariablesI matches 1.. as @r[scores={timeAfterMurder=30..}] run function strangecurse:death/predeath/startdeath
execute if score deathIP_sc VariablesI matches 1..5 run scoreboard players add deathIP_sc VariablesI 1
execute if score deathIP_sc VariablesI matches 5.. run scoreboard players set deathIP_sc VariablesI 0



## Reschedule
schedule function strangecurse:loop60 60s
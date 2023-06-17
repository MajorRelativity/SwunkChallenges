## loop60
# The main loop function that controls everything that is time dependent.
# If you kill to many things, you will be marked for the death process.

## Scoreboards:
# Keep Track of Murders:
execute as @a if score @s kills matches 5.. run tag @s add murderer
execute as @a[tag=murderer] run scoreboard players add @s timeAfterMurder 1
execute as @a[tag=murderer,scores={kills=10..,timeAfterMurder=2..}] run scoreboard players add @s timeAfterMurder 2
execute as @a[tag=murderer,scores={kills=20..,timeAfterMurder=2..}] run scoreboard players add @s timeAfterMurder 2
execute as @a[tag=murderer,scores={kills=30..,timeAfterMurder=2..}] run scoreboard players add @s timeAfterMurder 3

# Reduce Kill Number (clemancy):

# Murder Scare:
execute as @a[scores={timeAfterMurder=1}] run function strangecurse:scare/startscare
execute as @a[scores={timeAfterMurder=2..29,kills=30..}] run function strangecurse:scare/startscare

# Death sequence for random murderer with murdertime over 30. Also makes so death can't happen within three minutes of each other:
execute unless score deathIP_sc VariablesI matches 1.. run tag @a remove herobrinemarked
execute unless score deathIP_sc VariablesI matches 1.. as @r[scores={timeAfterMurder=30..}] run function strangecurse:death/predeath/startdeath
execute if score deathIP_sc VariablesI matches 1..3 run scoreboard players add deathIP_sc VariablesI 1
execute if score deathIP_sc VariablesI matches 3.. run scoreboard players set deathIP_sc VariablesI 0



## Reschedule
schedule function strangecurse:loop60 60s
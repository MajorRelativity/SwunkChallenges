## spawn.mcfunction
# Spawns Herobrine and schedules the functions that make him chase the player

## Scoreboards:
scoreboard players set hCountS VariablesI 0

## Create Herobrine:
execute at @e[type=area_effect_cloud,name="deathportal"] run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:redstone_torch",Count:1b,tag:{CustomModelData:10101000}}],CustomName:'{"text":"herobrine"}'}

## Schedule Events:

# Exit Portal:
schedule function strangecurse:death/herobrine/hexitportal 5t
schedule function strangecurse:death/herobrine/phase1/phase1m 20t

# Phase 2
schedule function strangecurse:death/herobrine/phase2/phase1cancel 5s
schedule function strangecurse:death/herobrine/phase2/phase2m 5s
schedule function strangecurse:death/herobrine/phase2/010102001 101t
schedule function strangecurse:death/herobrine/phase2/010102002 102t
schedule function strangecurse:death/herobrine/phase2/010102003 103t
schedule function strangecurse:death/herobrine/phase2/010102004 104t

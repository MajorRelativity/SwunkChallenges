## killplayer.mcfunction:
# Removes herobrine and makes player rise into the air

## Cancel Function Schedule:

# Phase 1:
schedule clear strangecurse:death/herobrine/phase1/phase1m

# Phase 2
schedule clear strangecurse:death/herobrine/phase2/phase1cancel 
schedule clear strangecurse:death/herobrine/phase2/phase2m 
schedule clear strangecurse:death/herobrine/phase2/010102001 
schedule clear strangecurse:death/herobrine/phase2/010102002 
schedule clear strangecurse:death/herobrine/phase2/010102003 
schedule clear strangecurse:death/herobrine/phase2/010102004 

# Phase 3
schedule clear strangecurse:death/herobrine/phase3/phase2cancel
schedule clear strangecurse:death/herobrine/phase3/phase3m
schedule clear strangecurse:death/herobrine/phase3/010102005 
schedule clear strangecurse:death/herobrine/phase3/010102006
schedule clear strangecurse:death/herobrine/phase3/010102007
schedule clear strangecurse:death/herobrine/phase3/010102008

## Kill Herobrine:
execute at @s run playsound minecraft:entity.enderman.stare master @a ~ ~ ~ 10 1.8
execute at @s run playsound minecraft:entity.enderman.death master @a ~ ~ ~ 10 1.2
execute at @s run particle minecraft:large_smoke ~ ~ ~ .1 .1 .1 .1 20 normal 
kill @s

## Levitation

effect give @a[tag=herobrinemarked] levitation 10 10 true
schedule function strangecurse:death/herobrine/phase4/freezeinair 1s
schedule function strangecurse:death/herobrine/phase4/summonplayer 5s
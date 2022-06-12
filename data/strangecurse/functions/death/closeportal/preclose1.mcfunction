## preclose.mcfunction
# Creates some effects that tell that the gate is closing soon

## Particles:
execute at @e[type=area_effect_cloud,name="deathportal"] run particle minecraft:campfire_signal_smoke ~ ~ ~ .1 .1 .1 .2 10 normal @a

## Schedule:
schedule function strangecurse:death/closeportal/preclose1 1s
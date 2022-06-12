## preclose2.mcfunction
# Stops preclose1, runs the portal particle animation a few times making it bigger each time until it stops the portal and runs the explode.

## Particles:
execute if score dCountClose VariablesI matches 0..4 at @e[type=area_effect_cloud,name="deathportal"] run particle minecraft:portal ~ ~ ~ 0 0 0 .5 20 normal @a
execute if score dCountClose VariablesI matches 5..8 at @e[type=area_effect_cloud,name="deathportal"] run particle minecraft:portal ~ ~ ~ 0 0 0 2 60 normal @a
execute if score dCountClose VariablesI matches 9..12 at @e[type=area_effect_cloud,name="deathportal"] run particle minecraft:portal ~ ~ ~ 0 0 0 4 100 normal @a

## Schedule and Scoreboard: 
# Stop Smoke
execute if score dCountClose VariablesI matches 10 run schedule clear strangecurse:death/closeportal/preclose1

# Stop Portal and Explode
execute unless score dCountClose VariablesI matches 12.. run schedule function strangecurse:death/closeportal/preclose2 1s
execute if score dCountClose VariablesI matches 10 run schedule clear strangecurse:death/alignportal/runportalloop
execute if score dCountClose VariablesI matches 12 as @e[type=area_effect_cloud,name="deathportal"] run function strangecurse:death/closeportal/explode

# Score
scoreboard players add dCountClose VariablesI 1
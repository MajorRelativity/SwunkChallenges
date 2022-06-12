## addblocks.mcfunction
# Adds blocks if they don't look like they are in the right position

## If No Air Behind Portal:
execute if score @s VariablesI matches 1 at @s run fill ~1 ~-1 ~-1 ~1 ~1 ~1 sculk keep
execute if score @s VariablesI matches 2 at @s run fill ~-1 ~-1 ~-1 ~-1 ~1 ~1 sculk keep
execute if score @s VariablesI matches 3 at @s run fill ~-1 ~-1 ~1 ~1 ~1 ~1 sculk keep
execute if score @s VariablesI matches 4 at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~-1 sculk keep
execute if score @s VariablesI matches 5 at @s run fill ~-1 ~1 ~-1 ~1 ~1 ~1 sculk keep
execute if score @s VariablesI matches 6 at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 sculk keep

## If Block in Front of Portal
execute if score @s VariablesI matches 1 at @e[type=area_effect_cloud,name="deathportal"] positioned ~-1 ~ ~ run fill ~-1 ~ ~-1 ~ ~1 ~1 minecraft:air destroy
execute if score @s VariablesI matches 2 at @e[type=area_effect_cloud,name="deathportal"] positioned ~1 ~ ~ run fill ~ ~ ~-1 ~1 ~1 ~1 minecraft:air destroy
execute if score @s VariablesI matches 3 at @e[type=area_effect_cloud,name="deathportal"] positioned ~ ~ ~-1 run fill ~-1 ~ ~-1 ~1 ~1 ~ minecraft:air destroy
execute if score @s VariablesI matches 4 at @e[type=area_effect_cloud,name="deathportal"] positioned ~ ~ ~1 run fill ~-1 ~ ~ ~1 ~1 ~1 minecraft:air destroy
execute if score @s VariablesI matches 5 at @e[type=area_effect_cloud,name="deathportal"] run fill ~-1 ~-1 ~-1 ~1 ~ ~1 minecraft:air destroy
execute if score @s VariablesI matches 6 at @e[type=area_effect_cloud,name="deathportal"] run fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air destroy

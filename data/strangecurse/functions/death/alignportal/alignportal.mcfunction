## alignportal.mcfunction
# 1 = positive x
# 2 = negative x
# 3 = positive z
# 4 = negative z
# 5 = positive y
# 6 = negative y
# 7 = no wall or floor, maintain position

## Positive X:
execute if score @s VariablesI matches 1 at @s align x run summon area_effect_cloud ~1 ~ ~ {CustomName:'[{"text":"deathportal"}]',Duration: 1200}

## Negative X:
execute if score @s VariablesI matches 2 at @s align x run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"deathportal"}]',Duration: 1200}

## Positive Z:
execute if score @s VariablesI matches 3 at @s align z run summon area_effect_cloud ~ ~ ~1 {CustomName:'[{"text":"deathportal"}]',Duration: 1200}

## Negative Z:
execute if score @s VariablesI matches 4 at @s align z run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"deathportal"}]',Duration: 1200}

## Positive Y:
execute if score @s VariablesI matches 5 at @s align xyz run summon area_effect_cloud ~.5 ~1 ~.5 {CustomName:'[{"text":"deathportal"}]',Duration: 1200}

## Negative Y:
execute if score @s VariablesI matches 6 at @s align xyz run summon area_effect_cloud ~.5 ~ ~.5 {CustomName:'[{"text":"deathportal"}]',Duration: 1200}

## No Block:
execute if score @s VariablesI matches 7 at @s align xyz run summon area_effect_cloud ~.5 ~.5 ~.5 {CustomName:'[{"text":"deathportal"}]',Duration: 1200}
## alignportal.mcfunction
# 1 = positive x
# 2 = negative x
# 3 = positive z
# 4 = negative z
# 5 = positive y
# 6 = negative y
# 7 = no wall or floor, maintain position

## X:
execute if score @s VariablesI matches 1 at @s align x run summon area_effect_cloud ~1 ~ ~ {CustomName:'[{"text":"deathportal"}]',Duration: 1500}
execute if score @s VariablesI matches 2 at @s align x run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"deathportal"}]',Duration: 1500}

## Z:
execute if score @s VariablesI matches 3 at @s align z run summon area_effect_cloud ~ ~ ~1 {CustomName:'[{"text":"deathportal"}]',Duration: 1500}
execute if score @s VariablesI matches 4 at @s align z run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"deathportal"}]',Duration: 1500}

## Y:
execute if score @s VariablesI matches 5 at @s align xyz run summon area_effect_cloud ~.5 ~.9 ~.5 {CustomName:'[{"text":"deathportal"}]',Duration: 1500,Rotation:[0.0f, 90.0f]}
execute if score @s VariablesI matches 6 at @s align xyz run summon area_effect_cloud ~.5 ~ ~.5 {CustomName:'[{"text":"deathportal"}]',Duration: 1500,Rotation:[0.0f, 90.0f]}

## No Block:
execute if score @s VariablesI matches 7 at @s align xyz run summon area_effect_cloud ~.5 ~.5 ~.5 {CustomName:'[{"text":"deathportal"}]',Duration: 1500}

## Run Loop:
function strangecurse:death/alignportal/runportalloop
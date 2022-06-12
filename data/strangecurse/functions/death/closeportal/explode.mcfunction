## explode.mcfunction:
# Creates explosion, sending out area effect clouds to set sculk blocks


## Sculk:

# Scoreboard:
scoreboard players set dCountSculk VariablesI 0

# Clouds
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[0.0f,-90.0f]}

execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[0.0f,-45.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[45.0f,-45.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[90.0f,-45.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[135.0f,-45.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[180.0f,-45.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[225.0f,-45.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[270.0f,-45.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[315.0f,-45.0f]}

execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[0.0f,0.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[45.0f,0.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[90.0f,0.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[135.0f,0.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[180.0f,0.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[225.0f,0.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[270.0f,0.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[315.0f,0.0f]}

execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[0.0f,45.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[45.0f,45.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[90.0f,45.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[135.0f,45.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[180.0f,45.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[225.0f,45.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[270.0f,45.0f]}
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[315.0f,45.0f]}

execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'[{"text":"sculkexp"}]',Duration: 50,Rotation:[0.0f,-90.0f]}

# Set Sculk:
function strangecurse:death/closeportal/sculk

## Explosion
execute at @s run particle minecraft:explosion ~ ~ ~ .2 .2 .2 3 30
execute at @s run summon creeper ~ ~ ~ {ExplosionRadius:10,Fuse:0}

## Kill Armor Stand:
kill @e[type=armor_stand,name="dportal_sc"]



## markarea
# Summons a marker and forceloads the area

## Effects:

execute at @s run particle explosion_emitter ~ ~ ~ 0 0 0 1 5
execute at @s run playsound entity.warden.emerge master @a ~ ~ ~ 20 2

## Summon Marker and Load Area:
# Summon angelmarker
execute at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Duration:3600,CustomName:'{"text":"angelmarker"}'}

# Summon second marker for after timer runs out
execute at @s run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Duration:4800,CustomName:'{"text":"angelmarker2"}'}

# Load Area:
forceload add ~-200 ~-200 ~200 ~200
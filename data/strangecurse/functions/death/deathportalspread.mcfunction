## deathportalspread.mcfunction
# Rotates the armor stand and sends out an area effect cloud to look for a wall

#Score Reset:
scoreboard players set dCountC VariablesI 0

# Rotation:
execute as @e[type=armor_stand,name="dportal_sc"] at @s rotated ~90 ~ run tp ~ ~ ~

# Resumon Area Effect Cloud:
kill @e[type=area_effect_cloud,name="dscout_sc"]
execute as @e[type=armor_stand,name="dportal_sc"] at @s run summon area_effect_cloud ~.5 ~.5 ~.5 {CustomName:'[{"text":"dscout_sc"}]',Duration: 100}
schedule function strangecurse:death/deathportals 1t
## phase2m.mcfunction:
# Phase 2 motion starts moving towards the player

execute as @e[type=armor_stand,name="herobrine"] at @s run tp @s ^ ^ ^.25 facing entity @p[tag=herobrinemarked]
execute as @e[type=armor_stand,name="herobrine"] at @s if entity @p[tag=herobrinemarked,distance=..2] run function strangecurse:death/herobrine/phase4/killplayer
schedule function strangecurse:death/herobrine/phase2/phase2m 1t
## phase2m.mcfunction:
# Phase 2 motion starts moving towards the player

execute as @e[type=armor_stand,name="herobrine"] at @s run tp @s ^ ^ ^.25 facing entity @p[tag=herobrinemarked]
schedule function strangecurse:death/herobrine/phase2/phase2m 1t
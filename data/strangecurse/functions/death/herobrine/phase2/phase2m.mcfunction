## phase1m.mcfunction:
# Phase 2 motion starts moving towards the player

execute as @e[type=armor_stand,name="herobrine"] at @s run tp @s ^ ^ ^.5 facing entity @p[tag=herobrinemarked]
schedule function strangecurse:death/herobrine/phase2/phase2m 2t
## phase3m.mcfunction:
# Phase 3 motion starts moving towards the player

execute as @e[type=armor_stand,name="herobrine"] at @s run tp @s ^ ^ ^.5 facing entity @p[tag=herobrinemarked]
schedule function strangecurse:death/herobrine/phase3/phase3m 1t
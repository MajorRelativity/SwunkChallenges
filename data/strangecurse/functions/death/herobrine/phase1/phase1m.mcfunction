## phase1m.mcfunction:
# Phase 1 motion. Simply faces the player

execute as @e[type=armor_stand,name="herobrine"] at @s run tp @s ^ ^ ^ facing entity @p[tag=herobrinemarked]
schedule function strangecurse:death/herobrine/phase1/phase1m 3t
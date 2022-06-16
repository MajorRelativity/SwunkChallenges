## phase1m.mcfunction:
# Phase 1 motion. Simply faces the player

execute as @e[type=armor_stand,name="herobrine"] at @s run tp @s ^ ^ ^ facing entity @p[tag=herobrinemarked]
execute as @e[type=armor_stand,name="herobrine"] at @s if entity @p[tag=herobrinemarked,distance=..2] run function strangecurse:death/herobrine/phase4/killplayer
schedule function strangecurse:death/herobrine/phase1/phase1m 3t

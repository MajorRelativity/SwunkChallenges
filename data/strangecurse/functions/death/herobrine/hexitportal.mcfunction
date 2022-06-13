## hexitportal.mcfunction
# Makes herobrine exit the portal

scoreboard players add hCountS VariablesI 1

execute if score hCountS VariablesI matches 1 as @e[type=armor_stand,name="herobrine"] at @s run tp @s ^ ^-.2 ^.2 facing entity @e[type=armor_stand,name="dportal_sc",limit=1] feet
execute if score hCountS VariablesI matches 2..8 as @e[type=armor_stand,name="herobrine"] at @s run tp @s ^ ^-.2 ^.2 

execute if score hCountS VariablesI matches 1..8 run schedule function strangecurse:death/herobrine/hexitportal 2t
## death.mcfunction
# Description: Initiates the Vecna death sequence and all subfunctions pertaining to it.

## Death Initiate:
scoreboard players set dCountClose VariablesI 0
scoreboard players set dCountC VariablesI 0
effect give @s unluck 200 1 true

## Portal Placement:

kill @e[type=armor_stand,name="dportal_sc"]
execute at @s align xyz run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,CustomName:'[{"text":"dportal_sc"}]',Invulnerable:1b,NoGravity:1b,OnGround:1b,Invisible:1b}
execute as @e[type=armor_stand,name="dportal_sc"] run schedule function strangecurse:death/deathportalc 5t
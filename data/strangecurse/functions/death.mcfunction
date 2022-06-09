## death.mcfunction
# Description: Initiates the Vecna death sequence and all subfunctions pertaining to it.

## Death Initiate:

scoreboard players set deathIP_sc VariablesI 1

## Portal Placement:

kill @e[type=armor_stand,name="dportal_sc"]
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,CustomName:'[{"text":"dportal_sc"}]',Invulnerable:1b,NoGravity:1b,OnGround:1b}
execute at @s run spreadplayers ~ ~ 0 10 false @e[type=armor_stand,name="dportal_sc"]
execute as @e[type=armor_stand,name="dportal_sc"] at @s run function strangecurse:deathportalc
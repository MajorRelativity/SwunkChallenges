## Flip
# Changes the state of the gravity

# If Current State is 0:
execute if score Gravity VariablesI matches 0 run scoreboard players set @a jumpcooldown 30
execute if score Gravity VariablesI matches 0 run scoreboard players set @a sneak 0
execute if score Gravity VariablesI matches 0 run function wildgravity:jump/loop1t

# If Current State is 1:
execute if score Gravity VariablesI matches 1 run effect clear @a levitation
execute if score Gravity VariablesI matches 1 run effect clear @a haste
execute if score Gravity VariablesI matches 1 run schedule clear wildgravity:jump/loop1t

# Switch Gravity Variable:
scoreboard players add Gravity VariablesI 1
execute if score Gravity VariablesI matches 2.. run scoreboard players set Gravity VariablesI 0

# Message:
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 10000 1.4
tellraw @a {"text":"[WG] Gravity flipping","color":"dark_purple"}
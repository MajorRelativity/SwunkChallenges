## deathportals.mcfunction
# Desctiption: Used to control the teleportation of the scout area_effect_cloud dscout_sc

tp ^ ^ ^1

# Air Test:
scoreboard players set dair_sc VariablesI 1
execute if block ^ ^ ^1 air run scoreboard players set dair_sc VariablesI 0
execute if block ^ ^ ^1 cave_air run scoreboard players set dair_sc VariablesI 0

# If air:
execute unless score dair_sc VariablesI = one DummyNumber as @s run schedule function strangecurse:deathportals 1t

# If no air
execute if score dair_sc VariablesI matches 1 run say deathportals.mcfunction
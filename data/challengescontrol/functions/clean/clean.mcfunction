## clean
# Simply unloads every challenge that is not relevant to remove effects from players


## Unload
execute unless score ChallengeNum VariablesC matches 1 run function strangecurse:unload
execute unless score ChallengeNum VariablesC matches 2 run function forbiddenblocks:unload
execute unless score ChallengeNum VariablesC matches 3 run function darklife:unload
execute unless score ChallengeNum VariablesC matches 4 run function itfollows:unload
execute unless score ChallengeNum VariablesC matches 5 run function vampirelife:unload
execute unless score ChallengeNum VariablesC matches 6 run function wildgravity:unload

## Confirm Score
execute if score ChallengeNum VariablesC matches 1 run scoreboard players set @a VariablesC 1
execute if score ChallengeNum VariablesC matches 2 run scoreboard players set @a VariablesC 2
execute if score ChallengeNum VariablesC matches 3 run scoreboard players set @a VariablesC 3
execute if score ChallengeNum VariablesC matches 4 run scoreboard players set @a VariablesC 4
execute if score ChallengeNum VariablesC matches 5 run scoreboard players set @a VariablesC 5
execute if score ChallengeNum VariablesC matches 6 run scoreboard players set @a VariablesC 6

## Begin Cleanloop:
schedule clear challengescontrol:clean/cleanloop
schedule function challengescontrol:clean/cleanloop 10s
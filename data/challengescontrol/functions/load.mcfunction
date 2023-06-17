## v0.33
## Credits:
# - tag "nonsolid.json" taken from Craiy's portal gun datapack. Same with carpets.json.
# - Particle Generator: https://cloudwolfyt.github.io/pages/gens/particle-plots.html
# - Math: Mathlite by Cloudwolf: https://www.youtube.com/watch?v=fzZASMieGn0

# Notes:
# - VariablesC control the challenge coordination, and should not be deleted
# - A Player's VariablesC is their current client ChallengeNum

## Initial Load Message:
tellraw @a {"text": "[+] SwunkChallenges has Loaded"}

## Scoreboard:
scoreboard objectives add VariablesC dummy
scoreboard objectives add fungusClick used:warped_fungus_on_a_stick 
scoreboard players set doReload VariablesC 0
execute if score ChallengeNum VariablesC matches 0 run scoreboard players set ChallengeNum VariablesC 1
scoreboard players operation ChallengeNumT VariablesC = ChallengeNum VariablesC

## Unload
execute unless score ChallengeNum VariablesC matches 1 run function strangecurse:unload
execute unless score ChallengeNum VariablesC matches 2 run function forbiddenblocks:unload
execute unless score ChallengeNum VariablesC matches 3 run function darklife:unload
execute unless score ChallengeNum VariablesC matches 4 run function itfollows:unload
execute unless score ChallengeNum VariablesC matches 5 run function vampirelife:unload
execute unless score ChallengeNum VariablesC matches 6 run function wildgravity:unload

## Load
execute if score ChallengeNum VariablesC matches 1 run function strangecurse:load
execute if score ChallengeNum VariablesC matches 2 run function forbiddenblocks:load
execute if score ChallengeNum VariablesC matches 3 run function darklife:load
execute if score ChallengeNum VariablesC matches 4 run function itfollows:load
execute if score ChallengeNum VariablesC matches 5 run function vampirelife:load
execute if score ChallengeNum VariablesC matches 6 run function wildgravity:load

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

## Begin ChooseChallenge:
schedule function challengescontrol:choosechallenge/choosechallengeloop 5s replace

schedule function challengescontrol:choosechallenge/reloadloop30 5s replace
## Credits:
# - tag "nonsolid.json" taken from Craiy's portal gun datapack. Same with carpets.json.
# - Particle Generator: https://cloudwolfyt.github.io/pages/gens/particle-plots.html
# - Math: Mathlite by Cloudwolf: https://www.youtube.com/watch?v=fzZASMieGn0

# Notes:
# - VariablesC control the challenge coordination, and should not be deleted

## Initial Load Message:
tellraw @a {"text": "[+] SwunkChallenges has Loaded"}

## Scoreboard:
scoreboard objectives add VariablesC dummy
execute if score ChallengeNum VariablesC matches 0 run scoreboard players set ChallengeNum VariablesC 5

## Strange Curse:
execute if score ChallengeNum VariablesC matches 1 run function strangecurse:loadsc
execute if score ChallengeNum VariablesC matches 2 run function forbiddenblocks:loadfb
execute if score ChallengeNum VariablesC matches 3 run function darklife:load
execute if score ChallengeNum VariablesC matches 4 run function itfollows:load
execute if score ChallengeNum VariablesC matches 5 run function vampirelife:load
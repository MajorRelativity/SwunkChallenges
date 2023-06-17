## reloadloop30
# If doReload score is above one than this loop will prepare to change the challenge

## Reload if Threashold Reached:
execute if score doReload VariablesC matches 2.. run execute if score ChallengeNumT VariablesC matches 1 run function challengescontrol:choosechallenge/strangecurse
execute if score doReload VariablesC matches 2.. run execute if score ChallengeNumT VariablesC matches 2 run function challengescontrol:choosechallenge/forbiddenblocks
execute if score doReload VariablesC matches 2.. run execute if score ChallengeNumT VariablesC matches 3 run function challengescontrol:choosechallenge/darklife
execute if score doReload VariablesC matches 2.. run execute if score ChallengeNumT VariablesC matches 4 run function challengescontrol:choosechallenge/itfollows
execute if score doReload VariablesC matches 2.. run execute if score ChallengeNumT VariablesC matches 5 run function challengescontrol:choosechallenge/vampirelife
execute if score doReload VariablesC matches 2.. run execute if score ChallengeNumT VariablesC matches 6 run function challengescontrol:choosechallenge/wildgravity


## Add 1 to doReload
execute if score doReload VariablesC matches 1.. run scoreboard players add doReload VariablesC 1
execute if score doReload VariablesC matches 1.. run tellraw @a {"text": "[+] Your New Challenge will load in 30 seconds"}


## Schedule
schedule function challengescontrol:choosechallenge/reloadloop30 30s
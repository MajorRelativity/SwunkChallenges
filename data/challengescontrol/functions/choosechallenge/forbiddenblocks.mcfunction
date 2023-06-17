## choosechallenge/forbiddenblocks
# Sets the variable ChallengeNum to 2 and reloads if 1 isn't selected

#Reload SwunkChallenges?
scoreboard players set doReload VariablesC 0
execute unless score ChallengeNum VariablesC matches 2 run scoreboard players set doReload VariablesC 1

# Set ChallengeNum
scoreboard players set ChallengeNum VariablesC 2

# Reload
execute if score doReload VariablesC matches 1.. run function challengescontrol:load
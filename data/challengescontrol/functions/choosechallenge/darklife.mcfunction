## choosechallenge/darklife
# Sets the variable ChallengeNum to 3 and reloads if 1 isn't selected

#Reload SwunkChallenges?
scoreboard players set doReload VariablesC 0
execute unless score ChallengeNum VariablesC matches 3 run scoreboard players set doReload VariablesC 1

# Set ChallengeNum
scoreboard players set ChallengeNum VariablesC 3

# Reload
execute if score doReload VariablesC matches 1.. run function challengescontrol:load
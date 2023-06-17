## choosechallenge/itfollows
# Sets the variable ChallengeNum to 4 and reloads if 1 isn't selected

#Reload SwunkChallenges?
scoreboard players set doReload VariablesC 0
execute unless score ChallengeNum VariablesC matches 4 run scoreboard players set doReload VariablesC 1

# Set ChallengeNum
scoreboard players set ChallengeNum VariablesC 4

# Reload
execute if score doReload VariablesC matches 1.. run function challengescontrol:load
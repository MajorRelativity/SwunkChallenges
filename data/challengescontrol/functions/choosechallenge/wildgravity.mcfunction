## choosechallenge/wildgravity
# Sets the variable ChallengeNum to 6 and reloads if 1 isn't selected

#Reload SwunkChallenges?
scoreboard players set doReload VariablesC 0
execute unless score ChallengeNum VariablesC matches 6 run scoreboard players set doReload VariablesC 1

# Set ChallengeNum
scoreboard players set ChallengeNum VariablesC 6

# Reload
execute if score doReload VariablesC matches 1.. run function challengescontrol:load
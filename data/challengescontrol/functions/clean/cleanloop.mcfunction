## cleanloop
# Determines when effects need to be removed from a player by reading the score of the challenge they are on
# and reconcileing it with the current server challenge (removing their effects, etc.)

## Check Random Player for Mismatch
# The player must be reset if their score does nto align with the actual score
execute as @r unless score @s VariablesC = ChallengeNum VariablesC run function challengescontrol:clean/clean

## Loop
schedule function challengescontrol:clean/cleanloop 120s

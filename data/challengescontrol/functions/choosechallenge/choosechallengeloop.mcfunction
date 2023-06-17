## ChooseChallengeLoop
# Check if player is holding the challenge stick in their inventory
# Check if player clicked stick
# Choose Stick Based On Challenge

## Check For Click:
execute as @r[nbt={Inventory:[{tag:{challengeselector:1b}}]},scores={fungusClick=1}] run function challengescontrol:choosechallenge/choosechallenge
scoreboard players set @a fungusClick 0

## Schedule
schedule function challengescontrol:choosechallenge/choosechallengeloop 1s
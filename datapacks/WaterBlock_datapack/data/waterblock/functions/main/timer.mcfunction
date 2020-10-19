# Progression du Timer
scoreboard players add ref WB.time 1

# Detection de l'insomnie
execute store result score query_daytime WB.time run time query daytime
execute if score query_daytime WB.time > night WB.time run scoreboard players operation insomnia WB.time += 1 WB

# Detection du changement de jour
execute store result score dayTemp WB.time run time query day
execute unless score dayTemp WB.time = day WB.time run function waterblock:main/morning
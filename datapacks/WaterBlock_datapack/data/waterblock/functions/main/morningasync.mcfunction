# c'est le matin ! asyncrone
execute if score debug WB matches 1 run say C'est le matin -> suite


# si c'est le lendemain d'une jounrée d'ile et que l'on a bien dormie
execute if score stateofyesterday WB.state = ile WB.state if score insomnia WB.time < abadnight WB.time as @e[tag=index] at @s run tp @s ^ ^2 ^100
execute if score stateofyesterday WB.state = ile WB.state if score insomnia WB.time < abadnight WB.time run scoreboard players operation state WB.state = follow WB.state
execute if score stateofyesterday WB.state = ile WB.state if score insomnia WB.time < abadnight WB.time if score debug WB matches 1 run say Il y avait une ile hier, maintenant, y'en a plus

# si c'est le lendemain d'une jounrée sans ile et que l'on n'a pas bien dormie
execute if score stateofyesterday WB.state = follow WB.state if score insomnia WB.time >= abadnight WB.time as @e[tag=index] at @s run tp @s ^ ^2 ^100
execute if score stateofyesterday WB.state = follow WB.state if score insomnia WB.time >= abadnight WB.time run scoreboard players operation state WB.state = follow WB.state
execute if score stateofyesterday WB.state = follow WB.state if score insomnia WB.time >= abadnight WB.time if score debug WB matches 1 run say Il ni avait pas d'ile hier et on n'a pas assez dormie

# si c'est le lendemain d'une jounrée sans ile et que l'on a dormie
execute if score stateofyesterday WB.state = follow WB.state if score insomnia WB.time < abadnight WB.time run function waterblock:main/eventofday

scoreboard players operation insomnia WB.time = 0 WB
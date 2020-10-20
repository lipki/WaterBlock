# C'est le matin ! (asynchrone)
execute if score debug WB matches 1 run say C'est le matin -> suite


# Si c'est le lendemain d'une journée d'île
# Et que l'on a bien dormi
execute if score stateofyesterday WB.state = ile WB.state if score insomnia WB.time < abadnight WB.time as @e[tag=index] at @s run tp @s ^ ^2 ^100
execute if score stateofyesterday WB.state = ile WB.state if score insomnia WB.time < abadnight WB.time run scoreboard players operation state WB.state = follow WB.state
execute if score stateofyesterday WB.state = ile WB.state if score insomnia WB.time < abadnight WB.time if score debug WB matches 1 run say Il y avait une ile hier, maintenant, y'en a plus

# Si c'est le lendemain d'une journée sans ile
# Et que l'on n'a pas bien dormi
execute if score stateofyesterday WB.state = follow WB.state if score insomnia WB.time >= abadnight WB.time as @e[tag=index] at @s run tp @s ^ ^2 ^100
execute if score stateofyesterday WB.state = follow WB.state if score insomnia WB.time >= abadnight WB.time run scoreboard players operation state WB.state = follow WB.state
execute if score stateofyesterday WB.state = follow WB.state if score insomnia WB.time >= abadnight WB.time if score debug WB matches 1 run say Il ni avait pas d'ile hier et on n'a pas assez dormie

# Si c'est le lendemain d'une journée sans ile
# Et que l'on a dormi
execute if score stateofyesterday WB.state = follow WB.state if score insomnia WB.time < abadnight WB.time run function waterblock:main/eventofday

scoreboard players operation insomnia WB.time = 0 WB
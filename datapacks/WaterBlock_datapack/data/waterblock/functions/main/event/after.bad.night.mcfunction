# mal dormi
execute if score debug WB matches 1 run tellraw @a {"text":"On n'a pas assez dormie alors rien de nouveaux","color":"dark_green"}


# On bouge l'index
# Si c'est le lendemain d'une journée sans ile
execute if score stateofyesterday WB.state = follow WB.state run function waterblock:main/stream/make.vector

# puis on choisit l'action du jour

# Si c'est le lendemain d'une journée sans ile
execute if score stateofyesterday WB.state = follow WB.state as @e[tag=index] at @s run tp @s ^ ^2 ^100
execute if score stateofyesterday WB.state = follow WB.state run scoreboard players operation state WB.state = follow WB.state
execute if score stateofyesterday WB.state = follow WB.state if score debug WB matches 1 run tellraw @a {"text":"le courant change !","color":"dark_green"}
# ouais on a bien dormi
execute if score debug WB matches 1 run tellraw @a {"text":"on a bien dormi, que va t'il ce passer ?","color":"dark_green"}

# D'abord on supprime l'ile précédente
# Si c'est le lendemain d'une journée d'ile
execute if score stateofyesterday WB.state = ile WB.state run function waterblock:main/iles/despawn.ile

# Ensuite on bouge l'index
function waterblock:main/stream/make.vector

# puis on choisit l'action du jour

# Si c'est le lendemain d'une journée d'île
execute if score stateofyesterday WB.state = ile WB.state as @e[tag=index] at @s run tp @s ^ ^2 ^100
execute if score stateofyesterday WB.state = ile WB.state run scoreboard players operation state WB.state = follow WB.state
execute if score stateofyesterday WB.state = ile WB.state if score debug WB matches 1 run tellraw @a {"text":"le courant change !","color":"dark_green"}

# Si c'est le lendemain d'une journée sans ile
execute if score stateofyesterday WB.state = follow WB.state run function waterblock:main/event/event.of.day




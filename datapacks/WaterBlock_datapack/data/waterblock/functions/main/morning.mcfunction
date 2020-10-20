# C'est le matin !
execute if score debug WB matches 1 run say C'est le matin

# Mets à jour le jour
scoreboard players operation day WB.time = dayTemp WB.time

# Sauvegarde l'état précédent
scoreboard players operation stateofyesterday WB.state = state WB.state

# D'abord on supprime l'ile précédente

# Si c'est le lendemain d'une journée d'ile
# et que l'on a bien dormi
execute if score stateofyesterday WB.state = ile WB.state if score insomnia WB.time < abadnight WB.time run function waterblock:main/despawnile

# Ensuite on bouge l'index si besoin

# Si c'est le lendemain d'une journée d'ile
# et que l'on a bien dormi
execute if score stateofyesterday WB.state = ile WB.state if score insomnia WB.time < abadnight WB.time run function waterblock:main/makevector

# Si c'est le lendemain d'une journée sans ile
execute if score stateofyesterday WB.state = follow WB.state run function waterblock:main/makevector

# Si c'est le lendemain d'une journée d'ile
# et que l'on a mal dormi
execute if score stateofyesterday WB.state = ile WB.state if score insomnia WB.time >= abadnight WB.time run scoreboard players operation insomnia WB.time = 0 WB
# c'est le matin !
execute if score debug WB matches 1 run say C'est le matin

# Met à jour le jour
scoreboard players operation day WB.time = dayTemp WB.time

# sauvegarde l'état précédent
scoreboard players operation stateofyesterday WB.state = state WB.state

# d'abord on suprimme l'ile précédente
# si c'est le lendemain d'une jounrée d'ile et que l'on a bien dormie
execute if score stateofyesterday WB.state = ile WB.state if score insomnia WB.time < abadnight WB.time run function waterblock:main/despawnile

# ensuite on bouge l'index si besoin

# si c'est le lendemain d'une jounrée d'ile et que l'on a bien dormie
execute if score stateofyesterday WB.state = ile WB.state if score insomnia WB.time < abadnight WB.time run function waterblock:main/makevector

# si c'est le lendemain d'une jounrée sans ile
execute if score stateofyesterday WB.state = follow WB.state run function waterblock:main/makevector

# si c'est le lendemain d'une jounrée d'ile et que l'on a mal dormie
execute if score stateofyesterday WB.state = ile WB.state if score insomnia WB.time >= abadnight WB.time run scoreboard players operation insomnia WB.time = 0 WB
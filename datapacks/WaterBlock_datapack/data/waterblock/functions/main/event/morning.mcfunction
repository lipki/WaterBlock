# C'est le matin !
execute if score debug WB matches 1 run say C'est le matin !

# Mets à jour le jour
scoreboard players operation day WB.time = dayTemp WB.time

# Sauvegarde l'état précédent
scoreboard players operation stateofyesterday WB.state = state WB.state

# Si on a bien dormi
execute if score insomnia WB.time < abadnight WB.time run function waterblock:main/event/after.good.night
# Si on a mal dormi
execute if score insomnia WB.time >= abadnight WB.time run function waterblock:main/event/after.bad.night

scoreboard players operation insomnia WB.time = 0 WB
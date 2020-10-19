# -- Si une île était là hier : on la fait disparaitre.
execute if score anIslande WW.event matches 1 run time set day
execute if score anIslande WW.event matches 1 run effect give @a minecraft:blindness 2 99
execute if score anIslande WW.event matches 1 run function waterblock:main/despawnile

# Cette function change le sens du courant
function waterblock:main/makevector
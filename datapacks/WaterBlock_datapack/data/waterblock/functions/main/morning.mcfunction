# reset day
time set day

# effet d'aveuglement pour masquer les modifications
effect give @a minecraft:blindness 2 99

# -- Si une île était là hier : on la fait disparaitre.
execute if score anIslande WW.event matches 1 run function waterworld:main/despawnile

# Cette function change le sens du courant
function waterworld:main/randomstreaminit

# choix de l'événement du jour
summon area_effect_cloud 0 0 0
execute store result score random WW.event run data get entity @e[type=minecraft:area_effect_cloud,limit=1] UUID[0]
scoreboard players operation random WW.event %= 100 WW

# Si > a 80% : Stop une île apparait
execute if score random WW.event >= 80 WW run function waterworld:main/spawnile
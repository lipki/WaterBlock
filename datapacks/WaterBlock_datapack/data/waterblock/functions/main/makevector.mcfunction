# Créer un vecteur représentant le déplacement des items dans l'eau
execute if score debug WB matches 1 run say Le courant a l'air de changer

# Choix d'un angle aléatoire
summon area_effect_cloud 0 0 0
execute store result score angle WB.stream run data get entity @e[type=minecraft:area_effect_cloud,limit=1] UUID[0]
scoreboard players operation angle WB.stream %= 360 WB

# Nombre fantôme 10 correspond permet de créer les coordonnées du vecteur
execute at @e[tag=origin] run tp @e[tag=index] ~ ~ ~
execute store result entity @e[tag=index,limit=1] Rotation[0] float 1 run scoreboard players get angle WB.stream
execute as @e[tag=index] at @s run tp @s ^ ^ ^10
execute store result score vectorX WB.stream run data get entity @e[tag=index,limit=1] Pos[0]
execute store result score vectorZ WB.stream run data get entity @e[tag=index,limit=1] Pos[2]

# Replacement au centre et dans le sens du faux déplacement du radeau
execute at @e[tag=origin] run tp @e[tag=index] ~ ~ ~
scoreboard players operation angle WB.stream += 180 WB
scoreboard players operation angle WB.stream %= 360 WB
execute store result entity @e[tag=index,limit=1] Rotation[0] float 1 run scoreboard players get angle WB.stream

# Modulo pour l'affichage, c'est plus lisible
scoreboard players operation angle WB.stream %= 360 WB

# On recherche le bord du radeau : asynchrone(retour à tick)
scoreboard players operation findedge WB.stream = 1 WB
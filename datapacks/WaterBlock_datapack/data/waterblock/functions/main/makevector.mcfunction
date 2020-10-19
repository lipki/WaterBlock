# créer un vecteur et positionne une armor stand a distance qui servira de point de largage de loot dans l'eau
# ou d'une ile
execute if score debug WB matches 1 run say Le courant a l'air de changer

# choix d'un angle aléatoire
summon area_effect_cloud 0 0 0
execute store result score angle WB.stream run data get entity @e[type=minecraft:area_effect_cloud,limit=1] UUID[0]
scoreboard players operation angle WB.stream %= 360 WB

# nombre fantôme 10 correspond permet de créer les coordonées du vecteur
execute at @e[tag=origin] run tp @e[tag=index] ~ ~ ~
execute store result entity @e[tag=index,limit=1] Rotation[0] float 1 run scoreboard players get angle WB.stream
execute as @e[tag=index] at @s run tp @s ^ ^ ^10
execute store result score vectorX WB.stream run data get entity @e[tag=index,limit=1] Pos[0]
execute store result score vectorZ WB.stream run data get entity @e[tag=index,limit=1] Pos[2]

# nombre fantôme 100 distance au centre de l'apparition des loots 
execute at @e[tag=origin] run tp @e[tag=index] ~ ~ ~
scoreboard players operation angle WB.stream += 180 WB
scoreboard players operation angle WB.stream %= 360 WB
execute store result entity @e[tag=index,limit=1] Rotation[0] float 1 run scoreboard players get angle WB.stream

# Modulo pour l'affichage, c'est plus lisible
scoreboard players operation angle WB.stream %= 360 WB

# On recherche le bord du radeau : asyncrone (marche pas)
scoreboard players operation findedge WB.stream = 1 WB
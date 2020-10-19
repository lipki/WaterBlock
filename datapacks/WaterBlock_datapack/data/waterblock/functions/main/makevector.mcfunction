# créer un vecteur et positionne une armor stand a distance qui servira de point de largage de loot dans l'eau
# ou d'une ile
summon area_effect_cloud 0 0 0
execute store result score angle WW.stream run data get entity @e[type=minecraft:area_effect_cloud,limit=1] UUID[0]
scoreboard players operation angle WW.stream %= 360 WW

# nombre fantôme 10 correspond permet de créer les coordonées du vecteur
execute at @e[tag=origin] run tp @e[tag=index] ~ ~2 ~
execute store result entity @e[tag=index,limit=1] Rotation[0] float 1 run scoreboard players get angle WW.stream
execute as @e[tag=index] at @s run tp @s ^ ^ ^10
execute store result score vectorX WW.stream run data get entity @e[tag=index,limit=1] Pos[0]
execute store result score vectorZ WW.stream run data get entity @e[tag=index,limit=1] Pos[2]

# nombre fantôme 100 distance au centre de l'apparition des loots 
execute at @e[tag=origin] run tp @e[tag=index] ~ ~2 ~
scoreboard players operation angle WW.stream += 180 WW
scoreboard players operation angle WW.stream %= 360 WW
execute store result entity @e[tag=index,limit=1] Rotation[0] float 1 run scoreboard players get angle WW.stream

# Modulo pour l'affichage, c'est plus lisible
scoreboard players operation angle WW.stream %= 360 WW

# passe a l'état de : recherche le bord du radeau
scoreboard players operation state WW.state = findedge WW.state
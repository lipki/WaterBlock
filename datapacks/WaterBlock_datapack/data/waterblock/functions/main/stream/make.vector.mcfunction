# Créer un vecteur représentant le déplacement des items dans l'eau
execute if score debug WB matches 1 run say Le courant a l'air de changer

scoreboard players set 180 WB 180
scoreboard players set 360 WB 360

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

# On ce déplace vers le bord du radeau par dichotomie
execute store result score var0 WB run scoreboard players get max WB.raft
execute as @e[tag=index] at @s if score var0 WB > 512 WB run tp @s ^ ^ ^512
execute as @e[tag=index] at @s if score var0 WB > 512 WB run scoreboard players remove var0 WB 512
execute as @e[tag=index] at @s if score var0 WB > 256 WB run tp @s ^ ^ ^256
execute as @e[tag=index] at @s if score var0 WB > 256 WB run scoreboard players remove var0 WB 256
execute as @e[tag=index] at @s if score var0 WB > 128 WB run tp @s ^ ^ ^128
execute as @e[tag=index] at @s if score var0 WB > 128 WB run scoreboard players remove var0 WB 128
execute as @e[tag=index] at @s if score var0 WB > 64 WB run tp @s ^ ^ ^64
execute as @e[tag=index] at @s if score var0 WB > 64 WB run scoreboard players remove var0 WB 64
execute as @e[tag=index] at @s if score var0 WB > 32 WB run tp @s ^ ^ ^32
execute as @e[tag=index] at @s if score var0 WB > 32 WB run scoreboard players remove var0 WB 32
execute as @e[tag=index] at @s if score var0 WB > 16 WB run tp @s ^ ^ ^16
execute as @e[tag=index] at @s if score var0 WB > 16 WB run scoreboard players remove var0 WB 16
execute as @e[tag=index] at @s if score var0 WB > 8 WB run tp @s ^ ^ ^8
execute as @e[tag=index] at @s if score var0 WB > 8 WB run scoreboard players remove var0 WB 8
execute as @e[tag=index] at @s if score var0 WB > 4 WB run tp @s ^ ^ ^4
execute as @e[tag=index] at @s if score var0 WB > 4 WB run scoreboard players remove var0 WB 4
execute as @e[tag=index] at @s if score var0 WB > 2 WB run tp @s ^ ^ ^2
execute as @e[tag=index] at @s if score var0 WB > 2 WB run scoreboard players remove var0 WB 2
execute as @e[tag=index] at @s if score var0 WB > 1 WB run tp @s ^ ^ ^1
execute as @e[tag=index] at @s if score var0 WB > 1 WB run scoreboard players remove var0 WB 1

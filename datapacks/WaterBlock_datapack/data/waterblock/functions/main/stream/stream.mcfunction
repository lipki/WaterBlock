#Mouvement de l'eau/courant pour les entités dans l'eau
execute as @e at @s if block ~ ~ ~ minecraft:water store result entity @s Motion[0] double 0.01 run scoreboard players get vectorX WB.stream
execute as @e at @s if block ~ ~ ~ minecraft:water store result entity @s Motion[2] double 0.01 run scoreboard players get vectorZ WB.stream
execute as @a at @s if block ~ ~ ~ minecraft:water run tp @s ~ ~-0.2 ~
#Mouvement de l'eau/courant pour les entités dans l'eau
execute as @e at @s if block ~ ~ ~ minecraft:water store result entity @s Motion[0] double 0.01 run scoreboard players get vectorX WB.stream
execute as @e at @s if block ~ ~ ~ minecraft:water store result entity @s Motion[2] double 0.01 run scoreboard players get vectorZ WB.stream
execute as @a at @s if block ~ ~ ~ minecraft:water run tp @s ~ ~-0.2 ~

# Détection pour largage de loot (remplacer par un shedule peut-être)
scoreboard players operation refTemp WB.time = ref WB.time
scoreboard players operation refTemp WB.time %= lootWaste WB.time
execute as @e[tag=index] at @s if score refTemp WB.time matches 0 run loot spawn ~ ~ ~ fish waterblock:chests/waste ~ ~ ~ mainhand
execute if score debug WB matches 1 if score refTemp WB.time matches 0 run say Largage de loot !
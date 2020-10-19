# Mouvement de l'eau / courant pour les entité dans l'eau
execute as @e at @s if block ~ ~ ~ minecraft:water store result entity @s Motion[0] double 0.01 run scoreboard players get vectorX WW.stream
execute as @e at @s if block ~ ~ ~ minecraft:water store result entity @s Motion[2] double 0.01 run scoreboard players get vectorZ WW.stream
execute as @a at @s if block ~ ~ ~ minecraft:water store result entity @s Pos[0] double 0.01 run scoreboard players get vectorX WW.stream
execute as @a at @s if block ~ ~ ~ minecraft:water store result entity @s Pos[2] double 0.01 run scoreboard players get vectorZ WW.stream

# Détection pour largage de loot
scoreboard players operation refTemp WW.time = ref WW.time
scoreboard players operation refTemp WW.time %= lootWaste WW.time
execute as @e[tag=index] at @s if score refTemp WW.time matches 0 run loot spawn ~ ~ ~ fish waterblock:chests/waste ~ ~ ~ mainhand
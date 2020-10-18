# Progression du Timer
scoreboard players add ref WW.time 1

# détection du changement de jour
execute store result score query_daytime WW.time run time query daytime
execute if score query_daytime WW.time >= midnight WW.time run function waterworld:main/morning

# Mouvement de l'eau / courant pour les entité dans l'eau
execute if score anIslande WW.event matches 0 as @e at @s if block ~ ~ ~ minecraft:water store result entity @s Motion[0] double 0.01 run scoreboard players get vectorX WW.stream
execute if score anIslande WW.event matches 0 as @e at @s if block ~ ~ ~ minecraft:water store result entity @s Motion[2] double 0.01 run scoreboard players get vectorZ WW.stream

# Affichage des fausses coordonées
scoreboard players operation latitude WW.coo += vectorX WW.stream
scoreboard players operation longitude WW.coo += vectorZ WW.stream
scoreboard players operation latitudeDisplay WW.coo = latitude WW.coo
scoreboard players operation longitudeDisplay WW.coo = longitude WW.coo
scoreboard players operation latitudeDisplay WW.coo /= 100 WW
scoreboard players operation longitudeDisplay WW.coo /= 100 WW
title @a actionbar {"text":"Latitude : ","extra":[{"score":{"name":"latitudeDisplay","objective":"WW.coo"}}," - Longitude : ",{"score":{"name":"longitudeDisplay","objective":"WW.coo"}}," - State : ",{"score":{"name":"state","objective":"WW.state"}}]}

# Détection pour largage de loot
scoreboard players operation refTemp WW.time = ref WW.time
scoreboard players operation refTemp WW.time %= lootWaste WW.time
execute as @e[tag=index] at @s if score anIslande WW.event matches 0 if score refTemp WW.time matches 0 run loot spawn ~ ~ ~ fish waterworld:chests/waste ~ ~ ~ mainhand

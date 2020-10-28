# Choix de l'ile
execute if score debug WB matches 1 run say Spawn de l'ile :

scoreboard players set endif WB 1

effect give @a minecraft:blindness 2 99

# Nombre aléatoire entre 0 et 5
summon area_effect_cloud 0 0 0
execute store result score random WB.event run data get entity @e[type=minecraft:area_effect_cloud,limit=1] UUID[0]
scoreboard players set 11 WB 11
scoreboard players operation random WB.event %= 11 WB

execute at @e[tag=index] if score random WB.event matches 0 run function waterblock:main/iles/medium/bambou
execute at @e[tag=index] if score random WB.event matches 1 run function waterblock:main/iles/medium/beach
execute at @e[tag=index] if score random WB.event matches 2 run function waterblock:main/iles/medium/desert
execute at @e[tag=index] if score random WB.event matches 3 run function waterblock:main/iles/medium/house
execute at @e[tag=index] if score random WB.event matches 4 run function waterblock:main/iles/medium/ice
execute at @e[tag=index] if score random WB.event matches 5 run function waterblock:main/iles/medium/idol
execute at @e[tag=index] if score random WB.event matches 6 run function waterblock:main/iles/medium/nether
execute at @e[tag=index] if score random WB.event matches 7 run function waterblock:main/iles/medium/ore
execute at @e[tag=index] if score random WB.event matches 8 run function waterblock:main/iles/medium/plains
execute at @e[tag=index] if score random WB.event matches 9 run function waterblock:main/iles/medium/snow
execute at @e[tag=index] if score random WB.event matches 10 run function waterblock:main/iles/medium/underwater
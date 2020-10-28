# Choix de l'ile
execute if score debug WB matches 1 run say Spawn de l'ile :

scoreboard players set endif WB 1

effect give @a minecraft:blindness 2 99

# Nombre aléatoire entre 0 et 5
summon area_effect_cloud 0 0 0
execute store result score random WB.event run data get entity @e[type=minecraft:area_effect_cloud,limit=1] UUID[0]
scoreboard players set 5 WB 5
scoreboard players operation random WB.event %= 5 WB

execute at @e[tag=index] if score random WB.event matches 0 run function waterblock:main/iles/small/radeau1
execute at @e[tag=index] if score random WB.event matches 1 run function waterblock:main/iles/small/radeau2
execute at @e[tag=index] if score random WB.event matches 2 run function waterblock:main/iles/small/radeau3
execute at @e[tag=index] if score random WB.event matches 3 run function waterblock:main/iles/small/coral1
execute at @e[tag=index] if score random WB.event matches 4 run function waterblock:main/iles/small/coral2
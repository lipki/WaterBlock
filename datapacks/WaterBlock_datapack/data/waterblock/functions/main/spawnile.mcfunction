# Choix de l'ile
execute if score debug WB matches 1 run say Spawn de l'ile :

effect give @a minecraft:blindness 2 99

# choix de l'ile
summon area_effect_cloud 0 0 0
execute store result score random WB.event run data get entity @e[type=minecraft:area_effect_cloud,limit=1] UUID[0]
scoreboard players operation random WB.event %= 6 WB

execute at @e[tag=index] if score random WB.event matches 0 run setblock ~-8 110 ~-8 structure_block{mode:"LOAD",name:"waterblock:small_plains_top"}
execute at @e[tag=index] if score random WB.event matches 0 run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",name:"waterblock:small_plains_bottom"}
execute at @e[tag=index] if score random WB.event matches 0 if score debug WB matches 1 run say Plains

execute at @e[tag=index] if score random WB.event matches 1 run setblock ~-8 110 ~-8 structure_block{mode:"LOAD",name:"waterblock:small_beach_top"}
execute at @e[tag=index] if score random WB.event matches 1 run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",name:"waterblock:small_beach_bottom"}
execute at @e[tag=index] if score random WB.event matches 1 if score debug WB matches 1 run say Beach

execute at @e[tag=index] if score random WB.event matches 2 run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",name:"waterblock:small_underwater_bottom"}
execute at @e[tag=index] if score random WB.event matches 2 if score debug WB matches 1 run say sous marine

execute at @e[tag=index] if score random WB.event matches 3 run setblock ~-8 110 ~-8 structure_block{mode:"LOAD",name:"waterblock:small_snow_top"}
execute at @e[tag=index] if score random WB.event matches 3 run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",name:"waterblock:small_snow_bottom"}
execute at @e[tag=index] if score random WB.event matches 3 if score debug WB matches 1 run say des neiges

execute at @e[tag=index] if score random WB.event matches 4 run setblock ~-8 110 ~-8 structure_block{mode:"LOAD",name:"waterblock:small_bambou_top"}
execute at @e[tag=index] if score random WB.event matches 4 run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",name:"waterblock:small_bambou_bottom"}
execute at @e[tag=index] if score random WB.event matches 4 if score debug WB matches 1 run say au bambou

execute at @e[tag=index] if score random WB.event matches 5 run setblock ~-8 110 ~-8 structure_block{mode:"LOAD",name:"waterblock:small_idol_top"}
execute at @e[tag=index] if score random WB.event matches 5 run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",name:"waterblock:small_idol_bottom"}
execute at @e[tag=index] if score random WB.event matches 5 if score debug WB matches 1 run say de l'idol

execute at @e[tag=index] run fill ~-9 94 ~-8 ~-9 110 ~-8 minecraft:redstone_block
execute at @e[tag=index] run fill ~-9 94 ~-8 ~-8 110 ~-8 minecraft:air
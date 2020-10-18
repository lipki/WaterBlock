# Si > a 80% : Stop une île apparait (au mauvaise endroit)
scoreboard players set anIslande WW.event 1

# choix de l'ile
summon area_effect_cloud 0 0 0
execute store result score random WW.event run data get entity @e[type=minecraft:area_effect_cloud,limit=1] UUID[0]
scoreboard players operation random WW.event %= 6 WW

execute at @e[tag=index] if score random WW.event matches 0 run setblock ~-8 110 ~-8 structure_block{mode:"LOAD",name:"waterworld:small_plains_top"}
execute at @e[tag=index] if score random WW.event matches 0 run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",name:"waterworld:small_plains_bottom"}

execute at @e[tag=index] if score random WW.event matches 1 run setblock ~-8 110 ~-8 structure_block{mode:"LOAD",name:"waterworld:small_beach_top"}
execute at @e[tag=index] if score random WW.event matches 1 run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",name:"waterworld:small_beach_bottom"}

execute at @e[tag=index] if score random WW.event matches 2 run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",name:"waterworld:small_underwater_bottom"}

execute at @e[tag=index] if score random WW.event matches 3 run setblock ~-8 110 ~-8 structure_block{mode:"LOAD",name:"waterworld:small_snow_top"}
execute at @e[tag=index] if score random WW.event matches 3 run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",name:"waterworld:small_snow_bottom"}

execute at @e[tag=index] if score random WW.event matches 4 run setblock ~-8 110 ~-8 structure_block{mode:"LOAD",name:"waterworld:small_bambou_top"}
execute at @e[tag=index] if score random WW.event matches 4 run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",name:"waterworld:small_bambou_bottom"}

execute at @e[tag=index] if score random WW.event matches 5 run setblock ~-8 110 ~-8 structure_block{mode:"LOAD",name:"waterworld:small_idol_top"}
execute at @e[tag=index] if score random WW.event matches 5 run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",name:"waterworld:small_idol_bottom"}

execute at @e[tag=index] run fill ~-9 94 ~-8 ~-9 110 ~-8 minecraft:redstone_block
execute at @e[tag=index] run fill ~-9 94 ~-8 ~-8 110 ~-8 minecraft:air
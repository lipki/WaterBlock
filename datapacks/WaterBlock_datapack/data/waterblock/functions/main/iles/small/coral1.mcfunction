execute at @e[tag=index] run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",name:"waterblock:small/coral1/sand"}
execute at @e[tag=index] run setblock ~-8 95 ~-8 minecraft:redstone_block
execute at @e[tag=index] run fill ~-8 94 ~-8 ~-8 95 ~-8 minecraft:air
execute at @e[tag=index] run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",integrity:0.1f,name:"waterblock:small/coral1/dirt"}
execute at @e[tag=index] run setblock ~-8 95 ~-8 minecraft:redstone_block
execute at @e[tag=index] run fill ~-8 94 ~-8 ~-8 95 ~-8 minecraft:air
execute at @e[tag=index] run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",integrity:0.1f,name:"waterblock:small/coral1/brain"}
execute at @e[tag=index] run setblock ~-8 95 ~-8 minecraft:redstone_block
execute at @e[tag=index] run fill ~-8 94 ~-8 ~-8 95 ~-8 minecraft:air
execute at @e[tag=index] run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",integrity:0.1f,name:"waterblock:small/coral1/bubble"}
execute at @e[tag=index] run setblock ~-8 95 ~-8 minecraft:redstone_block
execute at @e[tag=index] run fill ~-8 94 ~-8 ~-8 95 ~-8 minecraft:air
execute at @e[tag=index] run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",integrity:0.1f,name:"waterblock:small/coral1/fire"}
execute at @e[tag=index] run setblock ~-8 95 ~-8 minecraft:redstone_block
execute at @e[tag=index] run fill ~-8 94 ~-8 ~-8 95 ~-8 minecraft:air
execute at @e[tag=index] run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",integrity:0.1f,name:"waterblock:small/coral1/horn"}
execute at @e[tag=index] run setblock ~-8 95 ~-8 minecraft:redstone_block
execute at @e[tag=index] run fill ~-8 94 ~-8 ~-8 95 ~-8 minecraft:air
execute at @e[tag=index] run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",integrity:0.1f,name:"waterblock:small/coral1/tube"}
execute at @e[tag=index] run setblock ~-8 95 ~-8 minecraft:redstone_block
execute at @e[tag=index] run fill ~-8 94 ~-8 ~-8 95 ~-8 minecraft:air

execute as @e[tag=index] at @s run kill @e[type=!minecraft:player,tag=!index,distance=..16]

execute at @e[tag=index] if score debug WB matches 1 run say coral 1
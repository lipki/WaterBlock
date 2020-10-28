execute at @e[tag=index] run setblock ~-8 94 ~-8 structure_block{mode:"LOAD",name:"waterblock:medium/snow"}
execute at @e[tag=index] run setblock ~-8 95 ~-8 minecraft:redstone_block
execute at @e[tag=index] run fill ~-8 94 ~-8 ~-8 95 ~-8 minecraft:air

execute at @e[tag=index] if score debug WB matches 1 run say des neiges
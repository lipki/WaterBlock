

execute at @e[tag=index] run setblock ~-8 93 ~-8 structure_block{mode:"LOAD",name:"waterblock:medium/house"}
execute at @e[tag=index] run setblock ~-8 94 ~-8 minecraft:redstone_block
execute at @e[tag=index] run fill ~-8 93 ~-8 ~-8 94 ~-8 minecraft:air

execute at @e[tag=index] if score debug WB matches 1 run say House
scoreboard objectives add WB dummy
execute unless score firstload WB matches 1 run function waterblock:main/firstload
scoreboard players set firstload WB 1
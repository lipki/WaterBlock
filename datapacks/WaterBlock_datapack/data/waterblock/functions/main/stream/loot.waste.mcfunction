execute if score state WB.state = follow WB.state as @e[tag=index] at @s run loot spawn ~ ~ ~ fish waterblock:chests/waste ~ ~ ~ mainhand
execute if score state WB.state = follow WB.state if score debug WB matches 1 run say Largage de loot v2 !

schedule function waterblock:main/stream/loot.waste 25s
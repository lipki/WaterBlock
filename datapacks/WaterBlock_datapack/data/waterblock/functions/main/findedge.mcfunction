# cherche le bord du radeau
execute if score debug WB matches 1 run say Cherche le bord

execute as @e[tag=index] at @s if block ~ 0 ~ minecraft:glowstone run tp ^ ^ ^1
execute at @e[tag=index] unless block ~ 0 ~ minecraft:glowstone run scoreboard players operation findedge WB.stream = 0 WB
execute at @e[tag=index] unless block ~ 0 ~ minecraft:glowstone run function waterblock:main/morningasync
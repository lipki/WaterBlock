# on suprimme l'ancienne ile
execute if score debug WB matches 1 run say On suprimme l'ancienne ile

effect give @a minecraft:blindness 2 99
execute as @e[tag=index] at @s run kill @e[type=!minecraft:player,tag=!index,distance=..16]
execute at @e[tag=index] run fill ~-8 0 ~-8 ~8 109 ~8 minecraft:water replace
execute at @e[tag=index] run fill ~-8 110 ~-8 ~8 200 ~8 minecraft:air replace
execute as @e[tag=index] at @s run kill @e[type=!minecraft:player,tag=!index,distance=..16]

#scoreboard players set anIslande WB.event 0
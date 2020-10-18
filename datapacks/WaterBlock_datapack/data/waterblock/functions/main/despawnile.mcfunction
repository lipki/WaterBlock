# -- Si une île était là hier : on la fait disparaitre.
execute as @e[tag=index] at @s run kill @e[type=!minecraft:player,tag=!index,distance=..16]
execute at @e[tag=index] run fill ~-8 0 ~-8 ~8 109 ~8 minecraft:water replace
execute at @e[tag=index] run fill ~-8 110 ~-8 ~8 200 ~8 minecraft:air replace
execute as @e[tag=index] at @s run kill @e[type=!minecraft:player,tag=!index,distance=..16]
scoreboard players set anIslande WW.event 0
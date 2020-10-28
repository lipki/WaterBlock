# Choix de l'événement du jour
execute if score debug WB matches 1 run tellraw @a {"text":"Hier pas d'ile, que va t'il ce passer ?","color":"dark_green"}

# Choix de l'événement aléatoire
summon area_effect_cloud 0 0 0
execute store result score random WB run data get entity @e[type=minecraft:area_effect_cloud,limit=1] UUID[0]
scoreboard players operation random WB %= 100 WB
scoreboard players set 80 WB 80
scoreboard players set 50 WB 50

scoreboard players set endif WB 0

# Si > à 50% : une moyenne île apparaît et si les moyenne iles sont débloquer
execute if score endif WB matches 0 if score unlock.medium WB.event matches 1 if score random WB > 80 WB if score debug WB matches 1 run say Oh ! une moyenne ile
execute if score endif WB matches 0 if score unlock.medium WB.event matches 1 if score random WB > 80 WB as @e[tag=index] at @s run tp @s ^ ^ ^20
execute if score endif WB matches 0 if score unlock.medium WB.event matches 1 if score random WB > 80 WB run scoreboard players operation state WB.state = ile WB.state
execute if score endif WB matches 0 if score unlock.medium WB.event matches 1 if score random WB > 80 WB run function waterblock:main/iles/spawn.medium.ile

# Si > à 50% : une petite île apparaît
execute if score endif WB matches 0 if score random WB > 50 WB if score debug WB matches 1 run say Oh ! une petite ile
execute if score endif WB matches 0 if score random WB > 50 WB as @e[tag=index] at @s run tp @s ^ ^ ^20
execute if score endif WB matches 0 if score random WB > 50 WB run scoreboard players operation state WB.state = ile WB.state
execute if score endif WB matches 0 if score random WB > 50 WB run function waterblock:main/iles/spawn.small.ile

# Si < à 50% : pas d'ile, on place l'index pour larger les loots
execute if score endif WB matches 0 if score random WB <= 50 WB if score debug WB matches 1 run say Rien !
execute if score endif WB matches 0 if score random WB <= 50 WB as @e[tag=index] at @s run tp @s ^ ^2 ^100
execute if score endif WB matches 0 if score random WB <= 50 WB run scoreboard players operation state WB.state = follow WB.state

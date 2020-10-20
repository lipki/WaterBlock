# Choix de l'événement du jour
execute if score debug WB matches 1 run say Hier pas d'ile, on a bien dormie, que va t'il ce passer

# Choix de l'événement aléatoire
summon area_effect_cloud 0 0 0
execute store result score random WB.event run data get entity @e[type=minecraft:area_effect_cloud,limit=1] UUID[0]
scoreboard players operation random WB.event %= 100 WB

# Si < à 80% : pas d'ile, on place l'index pour larger les loots
execute if score random WB.event < 80 WB if score debug WB matches 1 run say Rien !
execute if score random WB.event < 80 WB as @e[tag=index] at @s run tp @s ^ ^2 ^100
execute if score random WB.event < 80 WB run scoreboard players operation state WB.state = follow WB.state

# Si > à 80% : une île apparaît
execute if score random WB.event >= 80 WB if score debug WB matches 1 run say Oh ! une ile
execute if score random WB.event >= 80 WB as @e[tag=index] at @s run tp @s ^ ^ ^20
execute if score random WB.event >= 80 WB run scoreboard players operation state WB.state = ile WB.state
execute if score random WB.event >= 80 WB run function waterblock:main/spawnile
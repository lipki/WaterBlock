
# choix de l'événement du jour
summon area_effect_cloud 0 0 0
execute store result score random WW.event run data get entity @e[type=minecraft:area_effect_cloud,limit=1] UUID[0]
scoreboard players operation random WW.event %= 100 WW

# Si < a 80% : pas d'ile, on place l'index pour larger les loots
execute if score random WW.event < 80 WW as @e[tag=index] at @s run tp @s ^ ^ ^100
execute if score random WW.event < 80 WW run scoreboard players operation state WW.state = follow WW.state

# Si > a 80% : Stop une île apparait
execute if score random WW.event >= 80 WW as @e[tag=index] at @s run tp @s ^ ^ ^20
execute if score random WW.event >= 80 WW run scoreboard players operation state WW.state = ile WW.state
execute if score random WW.event >= 80 WW run function waterblock:main/spawnile



  

    
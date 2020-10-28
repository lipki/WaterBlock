scoreboard objectives add WB dummy
execute unless score first.load WB matches 1 run function waterblock:main/first.load
scoreboard players set first.load WB 1

# affiche les messages de debug
scoreboard players set debug WB 1

#score du joueur
scoreboard objectives add onGround dummy
scoreboard objectives add angle dummy

# bossbar de fatigue
bossbar add waterblock:exhaustion {"text":"Fatigue","bold":True,"italic":True,"color":"purple"}
bossbar set waterblock:exhaustion max 54000
bossbar set waterblock:exhaustion players @a
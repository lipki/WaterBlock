# Affichage des fausses coordonnées
scoreboard players operation latitude WB.coo += vectorX WB.stream
scoreboard players operation longitude WB.coo += vectorZ WB.stream
scoreboard players operation var0 WB.coo = latitude WB.coo
scoreboard players operation var1 WB.coo = longitude WB.coo
scoreboard players operation var0 WB.coo /= 100 WB
scoreboard players operation var1 WB.coo /= 100 WB

title @a actionbar {"text":"Latitude : ","extra":[{"score":{"name":"var0","objective":"WB.coo"}}," - Longitude : ",{"score":{"name":"var1","objective":"WB.coo"}}]}
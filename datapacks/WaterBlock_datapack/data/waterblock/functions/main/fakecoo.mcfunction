# Affichage des fausses coordonées
scoreboard players operation latitude WB.coo += vectorX WB.stream
scoreboard players operation longitude WB.coo += vectorZ WB.stream
scoreboard players operation latitudeDisplay WB.coo = latitude WB.coo
scoreboard players operation longitudeDisplay WB.coo = longitude WB.coo
scoreboard players operation latitudeDisplay WB.coo /= 100 WB
scoreboard players operation longitudeDisplay WB.coo /= 100 WB

title @a actionbar {"text":"Latitude : ","extra":[{"score":{"name":"latitudeDisplay","objective":"WB.coo"}}," - Longitude : ",{"score":{"name":"longitudeDisplay","objective":"WB.coo"}}]}
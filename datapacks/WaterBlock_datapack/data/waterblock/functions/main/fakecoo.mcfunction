# Affichage des fausses coordonées
scoreboard players operation latitude WW.coo += vectorX WW.stream
scoreboard players operation longitude WW.coo += vectorZ WW.stream
scoreboard players operation latitudeDisplay WW.coo = latitude WW.coo
scoreboard players operation longitudeDisplay WW.coo = longitude WW.coo
scoreboard players operation latitudeDisplay WW.coo /= 100 WW
scoreboard players operation longitudeDisplay WW.coo /= 100 WW

execute if score state WW.state = init WW.state run title @a actionbar {"text":"Latitude : ","extra":[{"score":{"name":"latitudeDisplay","objective":"WW.coo"}}," - Longitude : ",{"score":{"name":"longitudeDisplay","objective":"WW.coo"}}," - State : Init"]}
execute if score state WW.state = findedge WW.state run title @a actionbar {"text":"Latitude : ","extra":[{"score":{"name":"latitudeDisplay","objective":"WW.coo"}}," - Longitude : ",{"score":{"name":"longitudeDisplay","objective":"WW.coo"}}," - State : Find Edge"]}
execute if score state WW.state = wait WW.state run title @a actionbar {"text":"Latitude : ","extra":[{"score":{"name":"latitudeDisplay","objective":"WW.coo"}}," - Longitude : ",{"score":{"name":"longitudeDisplay","objective":"WW.coo"}}," - State : Wait"]}
execute if score state WW.state = follow WW.state run title @a actionbar {"text":"Latitude : ","extra":[{"score":{"name":"latitudeDisplay","objective":"WW.coo"}}," - Longitude : ",{"score":{"name":"longitudeDisplay","objective":"WW.coo"}}," - State : Follow"]}
execute if score state WW.state = ile WW.state run title @a actionbar {"text":"Latitude : ","extra":[{"score":{"name":"latitudeDisplay","objective":"WW.coo"}}," - Longitude : ",{"score":{"name":"longitudeDisplay","objective":"WW.coo"}}," - State : Ile"]}
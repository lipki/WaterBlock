# Initialisation des variables et des options de base
gamerule commandBlockOutput false
worldborder set 29999984
setworldspawn 0 110 0

# Les constantes
scoreboard objectives add WB dummy
scoreboard players set firstload WB 1
scoreboard players set debug WB 1
scoreboard players set 0 WB 0
scoreboard players set 1 WB 1
scoreboard players set 6 WB 6
scoreboard players set 80 WB 80
scoreboard players set 100 WB 100
scoreboard players set 180 WB 180
scoreboard players set 360 WB 360

# Les états
scoreboard objectives add WB.state dummy
scoreboard players set state WB.state 0
scoreboard players set stateofyesterday WB.state 0
scoreboard players set follow WB.state 10
scoreboard players set ile WB.state 20

scoreboard players operation state WB.state = follow WB.state
# Tester l'état -> execute if score state WB.state = follow WB.state run say yes

# Initialisation du timer
scoreboard objectives add WB.time dummy
scoreboard players set ref WB.time 0
scoreboard players set refTemp WB.time 0
# Temps entre deux largages de loot dans le courant
scoreboard players set lootWaste WB.time 500
scoreboard players set dayTemp WB.time -1
scoreboard players set day WB.time -1
scoreboard players set night WB.time 13000
scoreboard players set query_daytime WB.time 0
scoreboard players set insomnia WB.time 999999
scoreboard players set abadnight WB.time 10000

# Fausse coordonnées pour simuler le déplacement
scoreboard objectives add WB.coo dummy
scoreboard players set latitude WB.coo 0
scoreboard players set longitude WB.coo 0
scoreboard players set latitudeDisplay WB.coo 0
scoreboard players set longitudeDisplay WB.coo 0

# Variable pour le vecteur représentant le courant
scoreboard objectives add WB.stream dummy
scoreboard players set findedge WB.stream 0

# Initialisation des événements
scoreboard objectives add WB.event dummy
scoreboard players set random WB.event 0

# Objectif des joueurs
scoreboard objectives add onGround dummy

# Armor stand servant de référence 0
# Nombre fantôme 109, hauteur de l'eau dans la map
kill @e[type=minecraft:armor_stand]
summon minecraft:armor_stand 0 109 0 {NoAI:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["origin"]}
execute at @e[tag=origin] run summon minecraft:armor_stand ~ ~ ~ {NoAI:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["index"]}

# Créer le radeau
execute at @e[tag=origin] if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=top] replace

# Affichage retardé du message d'accueil.
schedule function waterblock:main/welcome 1s
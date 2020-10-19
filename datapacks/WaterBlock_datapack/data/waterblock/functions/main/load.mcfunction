
# Initialisation des variables et des options de base
gamerule commandBlockOutput false
worldborder set 29999984
setworldspawn 0 110 0

# Les constantes
scoreboard objectives add WW dummy
scoreboard players set 6 WW 6
scoreboard players set 80 WW 80
scoreboard players set 100 WW 100
scoreboard players set 180 WW 180
scoreboard players set 360 WW 360

# Les états
scoreboard objectives add WW.state dummy
scoreboard players set state WW.state 0
scoreboard players set init WW.state 10
scoreboard players set findedge WW.state 20
scoreboard players set wait WW.state 30
scoreboard players set follow WW.state 40
scoreboard players set ile WW.state 50

scoreboard players operation state WW.state = init WW.state
# tester l'état -> execute if score state WW.state = init WW.state run say yes

# Initialisation du timer
scoreboard objectives add WW.time dummy
scoreboard players set ref WW.time 0
scoreboard players set refTemp WW.time 0
# Temps entre deux largages de loot dans le courant
scoreboard players set lootWaste WW.time 500
scoreboard players set midnight WW.time 18000
scoreboard players set query_daytime WW.time 0

# Fausse coordonées pour simuler le déplacement
scoreboard objectives add WW.coo dummy
scoreboard players set latitude WW.coo 0
scoreboard players set longitude WW.coo 0
scoreboard players set latitudeDisplay WW.coo 0
scoreboard players set longitudeDisplay WW.coo 0

# variable pour le vecteur représentant le courant
scoreboard objectives add WW.stream dummy

# Initialisation des evénements
scoreboard objectives add WW.event dummy
scoreboard players set anIslande WW.event 0
scoreboard players set random WW.event 0

# Armor stand servant de référence 0
# nombre fantôme 109 hauteur de l'eau dans la map
kill @e[type=minecraft:armor_stand]
summon minecraft:armor_stand 0 109 0 {NoAI:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["origin"]}
execute at @e[tag=origin] run summon minecraft:armor_stand ~ ~2 ~ {NoAI:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["index"]}

# Créer le radeau
execute at @e[tag=origin] if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=top] replace

# Cette fonction permet d'orienté le courant une première fois (et libère l'éecution du programme en modifiant l'état)
execute run function waterblock:main/allnight

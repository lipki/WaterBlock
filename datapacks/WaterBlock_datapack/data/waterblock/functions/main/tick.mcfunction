# Tout ce qui touche au temps qui passe
function waterblock:main/timer

# Affichage des fausses coordonnées
#function waterblock:main/fake.coo
# Affichage une fausse bousole
execute if score state WB.state = follow WB.state run function waterblock:main/fake.compass

# Permets de définir les limites du radeau

execute as @a store result score @s onGround run data get entity @s OnGround

execute as @a at @s store result score var0 WB run data get entity @s Pos[0]
execute run function waterblock:main/math/abs.var0-var1
execute as @a if score @s onGround matches 1 as @e[tag=index] at @s positioned ~-8 0 ~-8 unless entity @a[dx=16,dy=256,dz=16] if score var1 WB > max WB.raft run scoreboard players operation max WB.raft = var1 WB

execute as @a at @s store result score var0 WB run data get entity @s Pos[2]
execute run function waterblock:main/math/abs.var0-var1
execute as @a if score @s onGround matches 1 as @e[tag=index] at @s positioned ~-8 0 ~-8 unless entity @a[dx=16,dy=256,dz=16] if score var1 WB > max WB.raft run scoreboard players operation max WB.raft = var1 WB

# Tout ce qui concerne le courant
execute if score state WB.state = follow WB.state run function waterblock:main/stream/stream

function waterblock:main/timer

function waterblock:main/fakecoo

# permet de définir les limites du radeau
execute as @a store result score @s onGround run data get entity @s OnGround
execute as @a at @s if score @s onGround matches 1 unless block ~ 0 ~ minecraft:glowstone run setblock ~ 0 ~ minecraft:glowstone replace
execute if score findedge WB.stream = 1 WB run function waterblock:main/findedge

execute if score state WB.state = follow WB.state run function waterblock:main/stream
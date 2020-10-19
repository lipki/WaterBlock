# message de bienvenue
execute if score debug WB matches 1 run say Welcome !

tellraw @a ["",{"text":"Bienvenue sur Water_Block !","bold":true,"underlined":true,"color":"dark_red"},{"text":"\nVous seul savez pourquoi, mais ...\n"},{"text":"Vous vous réveillez ici, sur une dalle de bois. Un vieux bout de bois presque pétrifié par le temps.\nEt autour, de l'eau à l'infinie ! De l'eau d'une clarté incroyable !\nDans l'eau, quelque poissons, trop loin pour être attrapés.\nVous êtes perdu, complètement absorbé par l'horizon.\nMais, là-bas ! Au loin !\nNi a-t-il pas un objet qui flotte !","color":"dark_aqua"}]
effect give @a minecraft:nausea 10 1
effect give @a minecraft:blindness 3 99
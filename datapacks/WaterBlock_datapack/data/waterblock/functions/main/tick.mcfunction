# Progression du Timer
execute unless score state WW.state = init WW.state run scoreboard players add ref WW.time 1

execute unless score state WW.state = init WW.state run function waterblock:main/fakecoo

# détection du changement de jour
execute unless score state WW.state = init WW.state store result score query_daytime WW.time run time query daytime
execute unless score state WW.state = init WW.state if score query_daytime WW.time >= midnight WW.time run function waterblock:main/allnight

execute if score state WW.state = findedge WW.state run function waterblock:main/findedge

execute if score state WW.state = follow WW.state run function waterblock:main/stream

execute if score state WW.state = wait WW.state run function waterblock:main/eventofday
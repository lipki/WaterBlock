# Progression du timer
scoreboard players add ref WB.time 1

# var
scoreboard players set unconsciousTime WB.time 54000

# Progression de la fatigue
scoreboard players set var0 WB 0
scoreboard players operation var0 WB = ref WB.time
#scoreboard players add var0 WB 27000
scoreboard players operation var0 WB %= unconsciousTime WB.time
execute store result bossbar waterblock:exhaustion value run scoreboard players get var0 WB
execute if score var0 WB matches 0 run function waterblock:main/exhaustion/exhaustion0

# Détection de l'Insomnie
execute store result score var0 WB run time query daytime
execute if score var0 WB > night WB.time run scoreboard players operation insomnia WB.time += 1 WB

# Détection du changement de jour
execute store result score dayTemp WB.time run time query day
execute unless score dayTemp WB.time = day WB.time run function waterblock:main/event/morning
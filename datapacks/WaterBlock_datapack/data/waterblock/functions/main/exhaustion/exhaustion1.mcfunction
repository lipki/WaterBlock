effect give @a blindness 5 99 true

scoreboard players set var1 WB 240
execute store result score var0 WB run time query daytime
scoreboard players operation var0 WB /= 100 WB
scoreboard players operation var1 WB -= var0 WB

execute if score var1 WB > 128 WB run time add 12800
execute if score var1 WB > 128 WB run scoreboard players remove var1 WB 128
execute if score var1 WB > 64 WB run time add 6400
execute if score var1 WB > 64 WB run scoreboard players remove var1 WB 64
execute if score var1 WB > 32 WB run time add 3200
execute if score var1 WB > 32 WB run scoreboard players remove var1 WB 32
execute if score var1 WB > 16 WB run time add 1600
execute if score var1 WB > 16 WB run scoreboard players remove var1 WB 16
execute if score var1 WB > 8 WB run time add 800
execute if score var1 WB > 8 WB run scoreboard players remove var1 WB 8
execute if score var1 WB > 4 WB run time add 400
execute if score var1 WB > 4 WB run scoreboard players remove var1 WB 4
execute if score var1 WB > 2 WB run time add 200
execute if score var1 WB > 2 WB run scoreboard players remove var1 WB 2
execute if score var1 WB > 1 WB run time add 100
execute if score var1 WB > 1 WB run scoreboard players remove var1 WB 1

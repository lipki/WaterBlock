scoreboard players set 0 WB 0
scoreboard players set var1 WB 0

execute if score var0 WB < 0 WB run scoreboard players operation var1 WB -= var0 WB
execute if score var0 WB >= 0 WB run scoreboard players operation var1 WB = var0 WB
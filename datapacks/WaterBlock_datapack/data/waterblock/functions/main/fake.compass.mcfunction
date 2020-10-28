# Affiche la fausse direction prise par le radeau au centre

execute as @a store result score @s angle run data get entity @s Rotation[0]
scoreboard players operation @a angle %= 360 WB
scoreboard players operation var0 WB = @a angle
scoreboard players operation var0 WB -= angle WB.stream
scoreboard players operation var0 WB -= 360 WB
scoreboard players operation angleDisplay WB.stream = 360 WB
scoreboard players operation angleDisplay WB.stream -= var0 WB
scoreboard players operation angleDisplay WB.stream %= 360 WB

scoreboard players set 23 WB 23
scoreboard players set 68 WB 68
scoreboard players set 113 WB 113
scoreboard players set 158 WB 158
scoreboard players set 203 WB 203
scoreboard players set 248 WB 248
scoreboard players set 293 WB 293
scoreboard players set 338 WB 338

title @a times 0 40 20
execute if score angleDisplay WB.stream >= 0 WB if score angleDisplay WB.stream < 23 WB run title @a subtitle {"text":" ⬆ "}
execute if score angleDisplay WB.stream >= 23 WB if score angleDisplay WB.stream < 68 WB run title @a subtitle {"text":" ⬈ "}
execute if score angleDisplay WB.stream >= 68 WB if score angleDisplay WB.stream < 113 WB run title @a subtitle {"text":" ➡ "}
execute if score angleDisplay WB.stream >= 113 WB if score angleDisplay WB.stream < 158 WB run title @a subtitle {"text":" ⬊ "}
execute if score angleDisplay WB.stream >= 158 WB if score angleDisplay WB.stream < 203 WB run title @a subtitle {"text":" ⬇ "}
execute if score angleDisplay WB.stream >= 203 WB if score angleDisplay WB.stream < 248 WB run title @a subtitle {"text":" ⬋ "}
execute if score angleDisplay WB.stream >= 248 WB if score angleDisplay WB.stream < 293 WB run title @a subtitle {"text":" ⬅ "}
execute if score angleDisplay WB.stream >= 293 WB if score angleDisplay WB.stream < 338 WB run title @a subtitle {"text":" ⬉ "}
execute if score angleDisplay WB.stream >= 338 WB if score angleDisplay WB.stream < 0 WB run title @a subtitle {"text":" ⬆ "}
title @a title {"text":""}
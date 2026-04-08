tag @s add slime_finder-slime_spawn
execute at @s positioned ~ 40 ~ unless entity @s[dy=-104] run return fail
execute if entity @s[nbt={OnGround:0b}] run return fail

execute store result score @s slime_finder-chunk_x run data get entity @s Pos[0]
execute store result score @s slime_finder-chunk_z run data get entity @s Pos[2]

scoreboard players operation @s slime_finder-chunk_x /= $16 slime_finder-const
scoreboard players operation @s slime_finder-chunk_z /= $16 slime_finder-const

execute store result storage slime_finder:position chunk_x int 1 run scoreboard players get @s slime_finder-chunk_x
execute store result storage slime_finder:position chunk_z int 1 run scoreboard players get @s slime_finder-chunk_z

function slime_finder:save_slime_chunk with storage slime_finder:position
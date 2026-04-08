execute if items entity @s weapon.mainhand slime_finder:slime_dowsing_staff run tag @s add slime_finder-mainhand

execute store result score @s slime_finder-chunk_x run data get entity @s Pos[0]
execute store result score @s slime_finder-chunk_z run data get entity @s Pos[2]

scoreboard players operation @s slime_finder-chunk_x /= $16 slime_finder-const
scoreboard players operation @s slime_finder-chunk_z /= $16 slime_finder-const

execute store result storage slime_finder:position chunk_x int 1 run scoreboard players get @s slime_finder-chunk_x
execute store result storage slime_finder:position chunk_z int 1 run scoreboard players get @s slime_finder-chunk_z

function slime_finder:check_player_chunk with storage slime_finder:position

tag @s remove slime_finder-mainhand
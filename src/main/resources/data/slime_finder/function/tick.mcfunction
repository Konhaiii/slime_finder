execute as @e[type=minecraft:slime,tag=!slime_finder-slime_spawn,scores={slime_finder-slime_timer=2..}] run function slime_finder:mark_slime_chunk
execute as @e[type=minecraft:slime,tag=!slime_finder-slime_spawn] unless score @s slime_finder-slime_timer matches 2.. run scoreboard players add @s slime_finder-slime_timer 1

execute as @a if items entity @s weapon.* slime_finder:slime_dowsing_staff run function slime_finder:slime_dowsing_staff
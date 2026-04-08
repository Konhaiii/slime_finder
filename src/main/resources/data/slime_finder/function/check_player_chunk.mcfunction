$execute unless data storage slime_finder:slime_chunk {x_$(chunk_x)-z_$(chunk_z):1} run return run function slime_finder:fail_slime_chunk
execute if entity @s[tag=slime_finder-mainhand] run item modify entity @s weapon.mainhand slime_finder:slime_dowsing_staff_glint
execute if entity @s[tag=!slime_finder-mainhand] run item modify entity @s weapon.offhand slime_finder:slime_dowsing_staff_glint
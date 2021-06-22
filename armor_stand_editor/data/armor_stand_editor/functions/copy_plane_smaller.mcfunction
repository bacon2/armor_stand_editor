execute at @e[tag=miniblock_i] run summon marker ~ ~ ~ {Tags:["miniblock_e"]}
execute at @e[tag=miniblock_j] run summon marker ~ ~ ~ {Tags:["miniblock_f"]}
function armor_stand_editor:copy_line_smaller
kill @e[tag=miniblock_e]
kill @e[tag=miniblock_f]
tag @e[tag=miniblock_i] add miniblock_k
tag @e[tag=miniblock_j] add miniblock_l
execute at @e[tag=miniblock_k] run summon marker ~ ~1 ~ {Tags:["miniblock_i"]}
execute at @e[tag=miniblock_l] run summon marker ~ ~0.185 ~ {Tags:["miniblock_j"]}
kill @e[tag=miniblock_k]
kill @e[tag=miniblock_l]
execute as @e[tag=miniblock, nbt=!{HandItems:[{Count:1b},{}]}] run kill @s
scoreboard players add current_y mb_dimensions 1
scoreboard players set current_x mb_dimensions 0
execute if score current_y mb_dimensions < Y mb_dimensions run function armor_stand_editor:copy_plane_smaller
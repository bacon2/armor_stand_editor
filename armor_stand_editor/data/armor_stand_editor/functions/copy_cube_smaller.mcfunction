summon marker ~ ~ ~ {Tags:["miniblock_i"]}
summon marker ~10 ~5 ~ {Tags:["miniblock_j"]}
scoreboard players set current_y mb_dimensions 0
scoreboard players set current_z mb_dimensions 0
scoreboard players set current_x mb_dimensions 0
function armor_stand_editor:copy_plane_smaller
kill @e[tag=miniblock_i]
kill @e[tag=miniblock_j]
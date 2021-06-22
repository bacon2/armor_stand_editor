execute at @e[tag=miniblock_e] run summon marker ~ ~ ~ {Tags:["miniblock_a"]}
execute at @e[tag=miniblock_f] run summon marker ~ ~ ~ {Tags:["miniblock_b"]}
function armor_stand_editor:copy_block_smaller
kill @e[tag=miniblock_a]
kill @e[tag=miniblock_b]
tag @e[tag=miniblock_e] add miniblock_g
tag @e[tag=miniblock_f] add miniblock_h
execute at @e[tag=miniblock_g] run summon marker ~1 ~ ~ {Tags:["miniblock_e"]}
execute at @e[tag=miniblock_h] run summon marker ~0.185 ~ ~ {Tags:["miniblock_f"]}
kill @e[tag=miniblock_g]
kill @e[tag=miniblock_h]
scoreboard players add current_x mb_dimensions 1
scoreboard players set current_z mb_dimensions 0
execute if score current_x mb_dimensions < X mb_dimensions run function armor_stand_editor:copy_line_smaller
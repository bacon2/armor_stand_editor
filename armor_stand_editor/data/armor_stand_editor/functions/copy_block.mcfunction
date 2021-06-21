execute at @e[tag=miniblock_a] run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
execute as @e[tag=miniblock_b] at @e[tag=miniblock_a] run data modify entity @s data set from entity @e[type=item, limit=1, sort=nearest, distance=..1] Item
execute at @e[tag=miniblock_a] run kill @e[type=item, limit=1, sort=nearest, distance=..1]
execute as @e[tag=miniblock_b] at @s run summon armor_stand ~ ~-0.64 ~ {Invisible:1b, Marker:1b, Small:1b, Tags:["miniblock"]}
execute as @e[tag=miniblock_b] at @s run data modify entity @e[type=armor_stand, sort=nearest, limit=1] ArmorItems[3] set from entity @s data
tag @e[tag=miniblock_a] add miniblock_c
tag @e[tag=miniblock_b] add miniblock_d
execute at @e[tag=miniblock_c] run summon marker ~ ~ ~1 {Tags:["miniblock_a"]}
execute at @e[tag=miniblock_d] run summon marker ~ ~ ~0.43 {Tags:["miniblock_b"]}
kill @e[tag=miniblock_c]
kill @e[tag=miniblock_d]
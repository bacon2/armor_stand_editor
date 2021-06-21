summon armor_stand ~ ~-0.65 ~ {Invisible:1b, Marker:1b, Small:1b}
execute as @e[type=armor_stand, sort=nearest, limit=1] run data modify entity @s ArmorItems[3] set from entity @p SelectedItem
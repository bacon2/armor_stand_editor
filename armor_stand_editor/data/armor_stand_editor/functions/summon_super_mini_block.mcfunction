summon armor_stand ~ ~-0.32 ~ {Invisible:1b, Marker:1b, Small:1b, Pose:{RightArm:[345.0f, 45.0f, 0.0f]}}
execute as @e[type=armor_stand, sort=nearest, limit=1] run data modify entity @s HandItems[0] set from entity @p SelectedItem
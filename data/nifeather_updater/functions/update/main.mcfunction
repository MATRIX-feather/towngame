execute as @e[type=armor_stand,tag=game1_atk,tag=!nife_tg_point] run tag @s add nife_tg_point
execute as @e[type=armor_stand,tag=game1_def,tag=!nife_tg_point] run tag @s add nife_tg_point
execute as @e[type=armor_stand,tag=game1_anv,tag=!nife_tg_point] run tag @s add nife_tg_point
execute as @e[tag=nife_tg_point] run data merge entity @s {Invisible:0,DisabledSlots:2039583}
execute as @e[tag=game1_atk] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_sword",Count:1b}]}
execute as @e[tag=game1_anv] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:anvil",Count:1b}]}
execute as @e[tag=game1_def] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:65280}}]}
#execute as @e[tag=game1_atk,type=armor_stand] run data merge entity @s {Invulnerable:1b}
#execute as @e[tag=game1_def,type=armor_stand] run data merge entity @s {Invulnerable:1b}
#execute as @e[tag=game1_anv,type=armor_stand] run data merge entity @s {Invulnerable:1b}
#设置盔甲架
execute as @e[type=minecraft:armor_stand,tag=game1_atk] run data merge entity @s {Small:1b}
execute as @e[type=minecraft:armor_stand,tag=game1_def] run data merge entity @s {Small:1b}
execute as @e[type=minecraft:armor_stand,tag=game1_anv] run data merge entity @s {Small:1b}
#刷新点
#  重置
#scoreboard players set game1_armorstands nife_stats 0
#  刷新
execute at @e[type=armor_stand,tag=game1_atk] run scoreboard players add game1_armorstands nife_stats 1
execute at @e[type=armor_stand,tag=game1_def] run scoreboard players add game1_armorstands nife_stats 1
execute at @e[type=minecraft:armor_stand,tag=game1_anv] run scoreboard players add game1_armorstands nife_stats 1
#  去除已刷新的点
execute at @e[type=armor_stand,tag=game1_update_1] run scoreboard players remove game1_armorstands nife_stats 1
#  給已处理的盔甲架加tag
tag @e[type=armor_stand,tag=game1_atk] add game1_update_1
tag @e[type=armor_stand,tag=game1_def] add game1_update_1
tag @e[type=minecraft:armor_stand,tag=game1_anv] add game1_update_1
tag @e[type=armor_stand,tag=game1_update_v1] remove game1_update_v2
tag @e[type=armor_stand,tag=game1_update_v2] add game1_update_1
tag @e[type=armor_stand,tag=game1_update_1] remove game1_update_v1
tag @e[type=armor_stand,tag=game1_update_1] remove game1_update_v2
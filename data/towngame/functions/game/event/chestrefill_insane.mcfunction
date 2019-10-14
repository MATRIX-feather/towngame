#重设箱子,由borderchange函数调起,每次调起只执行一次
execute at @e[type=minecraft:armor_stand,tag=game1_atk] run setblock ~ ~ ~ minecraft:chest
execute at @e[type=minecraft:armor_stand,tag=game1_def] run setblock ~ ~ ~ minecraft:chest
execute at @e[type=minecraft:armor_stand,tag=game1_anv] run setblock ~ ~ ~ minecraft:anvil
execute at @e[type=minecraft:armor_stand,tag=game1_atk] run data merge block ~ ~ ~ {LootTable:"towngame:insane/chest_atk"}
execute at @e[type=minecraft:armor_stand,tag=game1_def] run data merge block ~ ~ ~ {LootTable:"towngame:insane/chest_def"}
execute at @e[type=minecraft:armor_stand,tag=game1_atk] run loot insert ~ ~ ~ loot towngame:insane/chest_var
tellraw @a[tag=nife_game_1] {"translate":"tg.event.borderchange","color":"red"}
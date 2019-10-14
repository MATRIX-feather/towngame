#重设箱子,由borderchange函数调起,只执行一次
execute at @e[type=minecraft:armor_stand,tag=game1_atk] run setblock ~ ~ ~ minecraft:chest
execute at @e[type=minecraft:armor_stand,tag=game1_def] run setblock ~ ~ ~ minecraft:chest
execute at @e[type=minecraft:armor_stand,tag=game1_anv] run setblock ~ ~ ~ minecraft:anvil
execute at @e[type=minecraft:armor_stand,tag=game1_atk] run data merge block ~ ~ ~ {LootTable:"towngame:chest_atk"}
execute at @e[type=minecraft:armor_stand,tag=game1_def] run data merge block ~ ~ ~ {LootTable:"towngame:chest_def"}
execute at @e[type=minecraft:armor_stand,tag=game1_atk] run loot insert ~ ~ ~ loot towngame:chest_var
kill @e[type=item]
xp add @a[tag=nife_game_1] 10 levels
tellraw @a[tag=nife_game_1] {"translate":"tg.event.borderchange","color":"red"}
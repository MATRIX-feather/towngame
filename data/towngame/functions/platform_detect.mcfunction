#检测平台(判断是否为非原版服务器)
scoreboard players set is_bukkit nife_stats 0
scoreboard players set is_forge nife_stats 0
execute as @r store success score is_bukkit nife_stats run data get entity @s {bukkit:{}}
execute as @r store success score is_forge nife_stats run data get entity @s {Attributes:[{Name:"forge.swimSpeed"}]}
execute if score is_bukkit nife_stats matches 1.. run function towngame:is_bukkit_warn
execute if score is_forge nife_stats matches 1.. run function towngame:is_forge_warn
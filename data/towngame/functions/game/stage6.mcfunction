#5000tick
#使玩家无敌15s
effect give @a[tag=nife_game_1] minecraft:resistance 25 255
#显示标题
title @a[tag=nife_game_1] title ""
title @a[tag=nife_game_1] subtitle [{"text":"⚠","color":"red","bold":true},{"translate":"tg.stagechange.subt"},{"text":"⚠","color":"red","bold":true}]
#毒圈中心改变
#生成盔甲架
execute at @e[tag=game1_spread] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["nife_func_1"]}
#扩散盔甲架
execute at @e[tag=game1_spread] run spreadplayers ~ ~ 20 100 false @e[type=minecraft:armor_stand,tag=nife_func_1]
#设置新的中心
execute at @e[type=minecraft:armor_stand,tag=nife_func_1] run worldborder center ~ ~
#重新设置边界
execute at @e[type=minecraft:armor_stand,tag=nife_func_1] run worldborder set 600
#重新缩圈
execute at @e[type=minecraft:armor_stand,tag=nife_func_1] run worldborder set 250 25
#发射烟花
execute at @e[type=minecraft:armor_stand,tag=nife_func_1] run summon minecraft:firework_rocket ~ ~50 ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Trail:1b,Type:1,Colors:[I;16777215],FadeColors:[I;16777215]},{Trail:1b,Type:2,Colors:[I;16777215],FadeColors:[I;16777215]},{Flicker:1b,Type:3,Colors:[I;0],FadeColors:[I;16645629]},{Type:2,Colors:[I;0],FadeColors:[I;16777215]},{Type:2,Colors:[I;0],FadeColors:[I;16777215]}]}}}}
#更新坐标
execute as @e[tag=nife_func_1] store result score nife_tg_bcenterZ nife_pos_Z run data get entity @s Pos[2]
execute as @e[tag=nife_func_1] store result score nife_tg_bcenterX nife_pos_X run data get entity @s Pos[0]
#清除盔甲架
kill @e[type=minecraft:armor_stand,tag=nife_func_1]
#标题
tellraw @a[tag=nife_game_1] ""
title @a[tag=nife_game_1] actionbar [{"text":"⚠","color":"red","bold":true},{"translate":"tg.stage6.borderchange"},{"text":"⚠","color":"red","bold":true}]
#音效及空投
kill @e[type=item]
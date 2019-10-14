##如果扣血,calc比P-H低
##nife_P-... = nife_player_...
##nife_P_H-... = nife_player_health_...;
#execute as @a run scoreboard players operation @s nife_P-calc -= @s nife_P-health
#execute as @a if score @s nife_P-calc matches 1.. run function towngame:dev/health_less
#execute as @a if score @s nife_P-calc matches ..-1 run function towngame:dev/health_more
##更新数值
#execute as @a store result score @s nife_P-calc run scoreboard players get @s nife_P-health

particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=!gun_user,nbt={DeathTime:0s},type=!minecraft:armor_stand] run function towngame:dev/damage

#execute unless block ~ ~ ~ air run effect give @e[distance=..1] minecraft:instant_damage 1 0 true

scoreboard players add @s test 1
execute unless block ~ ~ ~ air run scoreboard players add @s test 300
execute if score @s test matches ..128 positioned ^ ^ ^1 run function towngame:dev/main

scoreboard players reset @s test
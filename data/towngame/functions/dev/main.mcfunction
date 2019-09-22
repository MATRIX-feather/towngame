#如果扣血,calc比P-H低
#nife_P-... = nife_player_...
#nife_P_H-... = nife_player_health_...
execute as @a run scoreboard players operation @s nife_P-calc -= @s nife_P-health
execute as @a if score @s nife_P-calc matches 1.. run function towngame:dev/health_less
execute as @a if score @s nife_P-calc matches ..-1 run function towngame:dev/health_more
#更新数值
execute as @a store result score @s nife_P-calc run scoreboard players get @s nife_P-health
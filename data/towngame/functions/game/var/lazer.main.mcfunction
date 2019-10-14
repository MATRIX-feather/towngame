particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
#effect give @a[distance=..1,tag=!lazer_user] minecraft:instant_damage 1 0 true

scoreboard players add @s nife_lazer_timer 1
execute unless block ~ ~ ~ #towngame:air run scoreboard players add @s nife_lazer_timer 300
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!lazer_user,nbt={DeathTime:0s},distance=..1.3] run function towngame:game/var/lazer.damage
execute if score @s nife_lazer_timer matches ..128 positioned ^ ^ ^1 run function towngame:game/var/lazer.main

scoreboard players reset @s nife_lazer_timer
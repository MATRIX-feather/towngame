particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s nife_lazer_timer 1
execute unless block ~ ~ ~ #towngame:air run scoreboard players add @s nife_lazer_timer 300
execute if block ~ ~ ~ #minecraft:leaves run scoreboard players add @s nife_lazer_timer 20
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!lazer_user,nbt={DeathTime:0s},dx=0,dy=0,dz=0,limit=1] run function towngame:game/gadgets/lazer.damage
execute if score @s nife_lazer_timer matches ..128 positioned ^ ^ ^1 run function towngame:game/gadgets/lazer.main
scoreboard players reset @s nife_lazer_timer
#sw_1 <-> sw_2
tag @r[tag=nife_game_1] add tg_sw_1
tag @r[tag=nife_game_1,tag=!tg_sw_1] add tg_sw_2
tag @a[tag=tg_sw_1] add tg_sw
tag @a[tag=tg_sw_2] add tg_sw
execute at @a[tag=tg_sw_1] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Tags:["tg_sw_1a","tg_sw_armorstand"]}
execute at @a[tag=tg_sw_2] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Tags:["tg_sw_2a","tg_sw_armorstand"]}
execute as @a[tag=tg_sw_1] run tp @e[tag=tg_sw_2a,limit=1]
execute as @a[tag=tg_sw_2] run tp @e[tag=tg_sw_1a,limit=1]
effect give @a[tag=tg_sw] minecraft:blindness 1 0 true
effect give @a[tag=tg_sw] minecraft:resistance 3 255 true
effect give @a[tag=tg_sw] minecraft:weakness 3 255 true
effect give @a[tag=tg_sw] minecraft:levitation 1 10 true
tellraw @s [{"translate":"tg.panel.head","color":"gray","bold":true},{"translate":"tg.var.player_swap.msg.user","with":[{"selector":"@a[tag=tg_sw_1]"},{"selector":"@a[tag=tg_sw_2"}]}]
tellraw @a[tag=tg_sw] [{"translate":"tg.panel.head","color":"gray","bold":true},{"translate":"tg.var.player_swap.msg.target"}]
tag @a[tag=tg_sw] remove tg_sw_1
tag @a[tag=tg_sw] remove tg_sw_2
tag @a[tag=tg_sw] remove tg_sw
kill @e[tag=tg_sw_armorstand]
#tag @s add nife_lazer_damage
effect give @s minecraft:instant_damage 1 1 true
playsound towngame:var.lazer.damage master @a ~ ~ ~ 10 2
particle minecraft:explosion ~ ~ ~ 0 0 0 2 1 force
particle minecraft:end_rod ~ ~ ~ 0 0 0 1.5 150 force
tellraw @s [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"translate":"tg.ui.lazer.takedamage"}]
tellraw @a[tag=lazer_user] [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"translate":"tg.ui.lazer.makedamage","with":[{"selector":"@s"}]}]
scoreboard players add @a[tag=lazer_user] nife_lazer_timer 300
execute store result score @s nife_var_use run data get entity @s SelectedItem.tag.CustomModelData

execute if score @s nife_var_use matches 1 run function towngame:game/gadgets/glow
execute if score @s nife_var_use matches 2 run function towngame:game/gadgets/horse
execute if score @s nife_var_use matches 3 run function towngame:game/gadgets/player_swap
execute if score @s nife_var_use matches 4 run function towngame:game/gadgets/tnt
execute if score @s nife_var_use matches 5 unless entity @a[tag=lazer_user] run function towngame:game/gadgets/lazer.boot
execute if score @s nife_var_use matches 5 if entity @a[tag=lazer_user] run function towngame:game/gadgets/error/lazer_using

replaceitem entity @s weapon.mainhand air
scoreboard players set @s nife_var_use 0
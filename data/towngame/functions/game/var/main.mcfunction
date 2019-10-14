execute store result score @s nife_var_use run data get entity @s SelectedItem.tag.CustomModelData

execute if score @s nife_var_use matches 1 run function towngame:game/var/glow
execute if score @s nife_var_use matches 2 run function towngame:game/var/horse
execute if score @s nife_var_use matches 3 run function towngame:game/var/point_teleport
execute if score @s nife_var_use matches 4 run function towngame:game/var/tnt
execute if score @s nife_var_use matches 5 run function towngame:game/var/lazer.boot

#execute store result score @s nife_var_use run data get entity @s SelectedItem.Count

replaceitem entity @s weapon.mainhand air
scoreboard players set @s nife_var_use 0
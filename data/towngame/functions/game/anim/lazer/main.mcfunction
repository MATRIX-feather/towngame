particle minecraft:lava ^ ^ ^ 0 0 0 1 1 force

scoreboard players add @s test 1
execute if score @s test matches ..20 positioned ~ ~0.1 ~ run function towngame:dev/main

scoreboard players reset @s test
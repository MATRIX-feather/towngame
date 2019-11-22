tag @s add nife_lazer_damage
summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,ignited:1b,ExplosionRadius:2,Fuse:0}
playsound towngame:var.lazer.damage master @a ~ ~ ~ 10 2
particle minecraft:end_rod ~ ~ ~ 0 0 0 1.5 150 force
function towngame:game/anim/lazer/boot
tellraw @s [{"translate":"tg.panel.head","color":"gray","bold":true},{"translate":"tg.ui.lazer.takedamage","with":[{"selector":"@a[tag=lazer_user]"}]}]
tellraw @a [{"translate":"tg.panel.head","color":"gray","bold":true},{"translate":"tg.ui.lazer.makedamage","with":[{"selector":"@s"}]}]
#tellraw @a [{"translate":"tg.panel.head","color":"gray","bold":"true"},{"selector":"@a[tag=lazer_user]"},{"text":" -> "},{"selector":"@s"}]
scoreboard players add @a[tag=lazer_user] nife_lazer_timer 300
tag @s remove nife_lazer_damage
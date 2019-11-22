#execute if entity @a[tag=lazer_user] run scoreboard players set @s nife_lazer_retry 1
tag @s add lazer_user
tp @s ~ ~ ~ ~ ~-5
execute positioned ~ ~1.8 ~ run function towngame:game/gadgets/lazer.main
playsound towngame:var.lazer.shoot master @s ~ ~ ~ 20 2
tag @s remove lazer_user
tag @s remove lazer_retry
#感谢 @天豹星雲 的[如何在MC中做出一把枪?](https://www.bilibili.com/video/av63250175)教程 <3
tag @s add lazer_user
execute positioned ~ ~1.8 ~ run function towngame:game/var/lazer.main
playsound towngame:var.lazer.shoot master @s ~ ~ ~ 20 2
tp @s ~ ~ ~ ~ ~-10
tag @s remove lazer_user
#感谢 @天豹星雲 的[如何在MC中做出一把枪?](https://www.bilibili.com/video/av63250175)教程 <3
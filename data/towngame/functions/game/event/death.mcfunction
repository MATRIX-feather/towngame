#   重置playercount
scoreboard players set player_count nife_stats 0
#设置玩家游戏模式
gamemode spectator @a[tag=nife_game_1,scores={nife_deaths=1..}]
#检查玩家数量并判断排名
#   在所有人身上执行添加player_count的nife_stats 1分
execute at @a[tag=nife_game_1,gamemode=adventure] run scoreboard players add player_count nife_stats 1
#   如果剩余玩家为2.则设置上一个死的玩家为town_rank3
execute if score player_count nife_stats matches 2 run tag @a[tag=nife_game_1,scores={nife_deaths=1..}] add town_rank3
#   如果剩余玩家为1.则设置上一个死的玩家为town_rank2
execute if score player_count nife_stats matches 1 run tag @a[tag=nife_game_1,scores={nife_deaths=1..}] add town_rank2
#   如果剩余玩家为1.则设置场上唯一的幸存者为town_rank1
execute if score player_count nife_stats matches 1 run tag @a[tag=nife_game_1,gamemode=adventure] add town_rank1
#胜出判定
#   如果值是0,则代表没有玩家剩余
#   如果值是1,则代表剩余1位玩家
function #towngame:plugin.event.playerdeath
execute if score player_count nife_stats matches 0..1 run function towngame:game/endgame
#重置玩家死亡数
scoreboard players set @a[tag=nife_game_1,scores={nife_deaths=1..}] nife_deaths 0
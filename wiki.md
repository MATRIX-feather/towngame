# NiFeather Towngame Wiki
## 欢迎来到 NiFeather Towngame Wiki!
### 目录

[1. 游戏玩法](#游戏玩法)

[2. 创建地图](#创建地图)

[3. 自定义缩圈等待时间等数值](#自定义)

[4. 自定义你的UI语言](#语言)

[**5. 创建towngame附加组件**](#附加组件)

# 游戏玩法

## 游戏前
*   与大厅点接触即可加入队列,队列人数满了之后将自动进入倒计时,倒计时为0后将开始游戏
## 游戏中
*   开始时,所有的玩家将会被随机扩散至各处并缓降着陆
*   游戏将在第一次缩圈和第四次缩圈时在每位玩家的头顶释放空投以确保所有的玩家都有几率获得基础物资
*   所有的道具均为 右键 使用
*   若在最后一次缩圈后,没有在设定的时间内分出胜负,游戏将回退至倒数第二次缩圈
*   游戏将在倒数第二次缩圈时在离地图中心20~200格内设定新的缩圈中心

# 创建地图

## 0 ) 准备工作
- 执行指令 ` /function towngame:game/town/tools/setpoints ` 可以获得下面步骤所需要的所有5种盔甲架的刷怪蛋

## 1 ) 设置游戏的边界中心
- 用 "中心" 刷怪蛋右键地面即可设置游戏的边界中心点

## 2 ) 创建固定物资点(武器,防具,铁砧)
- 用 "铁砧" 刷怪蛋右键地面即可创建铁砧物资点
- 用 "武器" 刷怪蛋右键地面即可创建武器固定物资点
- 用 "防御" 刷怪蛋右键地面即可创建武器防具物资点,**您需要创建至少一个以上的物资点才能开始游戏**

## 4 ) 设置地图大厅地点
- 用 "大厅点" 刷怪蛋右键地面即可设置地图大厅点

## 5 ) 执行gamecheck
- 执行 `function towngame:game/town/tools/gamecheck` 即可,游戏将检查配置是否已满足最低开始要求

# 自定义

## Towngame支持在游戏内通过指令对以下数值进行自定义:
*   游戏中:
    *   第一次缩圈前的等待时间
    *   第2~7次缩圈前的等待时间
    *   第7次缩圈后,重新缩圈的等待时间
    *   触发DeathMatch的重新缩圈次数
    *   道具是否可用
*   大厅:
    *   游戏的最小开始人数
*   其他:
    *   攻击/防御物资点和补给的insane模式

### 以上数值对应的指令为:
*   游戏中:
    *   `function towngame:custom/game/1stevent_add` || `function towngame:custom/game/1stevent_remove`
    *   `function towngame:custom/game/borderchangetime_add` || `function towngame:custom/game/borderchangetime_remove`
    *   `function towngame:custom/game/resizetime_add` || `function towngame:custom/game/resizetime_remove`
    *   `function towngame:custom/game/dm_add` || `function towngame:custom/game/dm_remove`
    *   `function towngame:custom/game/toggle_gadgets`

*   大厅:
    *   `function towngame:custom/lobby/queue_min_add` || `funtion towngame:custom/lobby/queue_min_remove`

*   Insane(疯狂模式) : 
    *   武器 `function towngame:custom/chests/toggle_atk`
    *   防御 `function towngame:custom/chests/toggle_def`
    *   补给 `function towngame:custom/chests/toggle_supply`

*   要显示当前的自定义设置,输入 : `function towngame:custom/displayvalues`

# 语言

要自定义Towngame的显示语言,在材质包中找到`assets/minecraft/lang/<你的语言代码>.json`即可.
* 我们允许您自行制作一份Towngame语言文件,如果您希望贡献翻译

# 附加组件

Towngame内建了几个函数标签,您可以用这些函数标签制作towngame的附加组件.

以下是这些标签的名称及描述:
*   #towngame:plugin.endgame
    *   带有该标签的函数将会在**游戏结束后结算结束前**被执行
    *   执行完带有该标签的所有函数后游戏结算结束
*   #towngame:plugin.gametick
    *   带有该标签的函数将会在**游戏开始后主函数处理完成前**被执行
    *   执行完带有该标签的所有函数后游戏主函数完成一次执行
*   #towngame:plugin.init
    *   带有该标签的函数将会在**towngame大厅倒计时结束后地图初始化完成前**被执行
    *   执行完带有该标签的所有函数后towngame完成地图初始化
*   #towngame:plugin.lobbymain
    *   带有该标签的函数将会在**大厅主函数处理完成前**被执行
    *   执行完带有该标签的所有函数后大厅主函数完成一次执行
*   #towngame:plugin.onload
    *   带有该标签的函数将会在**towngame数据包载入后初始化进程结束前**被执行
    *   执行完带有该标签的所有函数后游戏完成载入后的初始化
*   #towngame:plugin.event.borderchange
    *   带有该标签的函数将会在**缩圈函数结束前**被执行
    *   执行完带有该标签的所有函数后缩圈函数完成一次执行
*   #towngame:plugin.event.full_queue
    *   带有该标签的函数将会在**大厅队列玩家已满时**被执行
*   #towngame:plugin.event.player_join_queue
    *   带有该标签的函数将会在**有玩家加入队列时**被执行
    *   执行完带有该标签的所有函数后玩家将会被从大厅点处传送走
*   #towngame:plugin.event.playerdeath
    *   带有该标签的函数将会在**玩家死亡(被淘汰)时**被执行

另外,这里是一些可以在一定程度上帮助你编写附加组件的东西:
*   所有带有`nife_game_1`标签的玩家为正在进行游戏的玩家,使用`@a[tag=nife_game_1]`来选中,使用`@a[tag=nife_game_1,gamemode=adventure]`来选中未被淘汰的玩家
*   所有带有`nife_tg_queue`标签的玩家为正在大厅进行队列的玩家,使用`@a[tag=nife_tg_queue`来选中
*   游戏结算时,前三名将依次被给予`town_rank1`,`town_rank2`,`town_rank3`标签,并将在结算完成后移除
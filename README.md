# DeathCroodsDatapack
A Minecraft datapack that can broadcast dead player‘s coordinate.

版本兼容性：

Minecraft 1.21.4-1.21.5: pack_format 57

Minecraft 1.21.2-1.21.3: pack_format 48

Minecraft 1.21-1.21.1: pack_format 46

Minecraft 1.20.2-1.20.5: pack_format 18

Minecraft 1.20-1.20.1: pack_format 15

Minecraft 1.19.4: pack_format 12

使用方法：下载文件并按以下目录树放置文件。(放置在/world/datapack)

+ death/
  + pack.mcmeta
  + data/
    + death/
      + function/
        + init.mcfunction
        + tick.mcfunction
        + death_message.mcfunction
    + minecraft/
      + tags/
        + function/
          + load.json
          + tick.json

文件放置完成后，重启服务器或使用 /reload 命令即可加载。即使重启服务器，依然会自动加载。

您可以使用 /datapack list 验证数据包是否加载成功。数据包加载成功您应该可以看到“死亡坐标广播已启动"消息。

如果启动失败，请使用命令 /function death:init 手动启动。

效果：[死亡提醒] 玩家 在 维度 坐标 (x, y, z) 死亡了

<br>

如果功能不工作：

执行 /scoreboard objectives list 检查记分板是否创建

手动执行 /function death:xxx（自行补全） 测试各个函数

检查服务器是否允许执行函数

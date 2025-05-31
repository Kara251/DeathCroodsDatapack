# DeathCroodsDatapack
A Minecraft datapack that can broadcast dead player‘s coordinate.

版本兼容性：

Minecraft 1.20.2-1.20.4: pack_format 18

Minecraft 1.20-1.20.1: pack_format 15

Minecraft 1.19.4: pack_format 12


使用方法：下载文件并按以下目录树放置文件。
+ world/
  + datapacks/
    + death_coordinates/
      + pack.mcmeta
      + data/
        + death_coords/
          + functions/
            + load.mcfunction
            + main.mcfunction
            + send_death_location.mcfunction
        + minecraft/
          + tags/
            + functions/
              + load.json

文件放置完成后，重启服务器或使用 /reload 命令即可加载。即使重启服务器，依然会自动加载。

您可以使用 /datapack list 验证数据包是否加载成功。数据包加载成功您应该可以看到“死亡坐标系统已启动"消息。

如果启动失败，请使用命令 /function death_coords:load 手动启动。

效果：[死亡提醒] 玩家 在坐标 (x, y, z) 死亡了

<br>

如果功能不工作：

执行 /scoreboard objectives list 检查记分板是否创建

手动执行 /function death_coords:main 测试主函数

检查服务器是否允许执行函数

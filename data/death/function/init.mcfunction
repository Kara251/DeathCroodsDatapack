# 记分板初始化
scoreboard objectives add deathCount deathCount "死亡次数"
scoreboard objectives add posX dummy "X坐标"
scoreboard objectives add posY dummy "Y坐标" 
scoreboard objectives add posZ dummy "Z坐标"
scoreboard objectives add dimension dummy "维度ID"
scoreboard objectives add lastDeath dummy "上次死亡检测"

# 显示加载信息
tellraw @a {"text":"[数据包] 死亡坐标广播已启用","color":"green"}
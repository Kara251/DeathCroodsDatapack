# 服务器启动时自动执行
tellraw @a {"text":"死亡坐标系统已启动","color":"green"}

# 创建记分板
scoreboard objectives add deaths deathCount "死亡次数"
scoreboard objectives add death_x dummy "死亡X坐标"
scoreboard objectives add death_y dummy "死亡Y坐标" 
scoreboard objectives add death_z dummy "死亡Z坐标"

# 启动主循环
schedule function death_coords:main 1t replace

# 实时更新活着玩家的坐标
execute as @a[scores={deaths=0}] store result score @s death_x run data get entity @s Pos[0]
execute as @a[scores={deaths=0}] store result score @s death_y run data get entity @s Pos[1]
execute as @a[scores={deaths=0}] store result score @s death_z run data get entity @s Pos[2]

# 检测死亡并发送消息
execute as @a[scores={deaths=1..}] run function death_coords:send_death_location

# 重置死亡计数
scoreboard players set @a[scores={deaths=1..}] deaths 0

# 继续循环
schedule function death_coords:main 1t replace

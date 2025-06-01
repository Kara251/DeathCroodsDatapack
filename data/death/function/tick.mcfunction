# 为所有活着的玩家实时存储位置和维度信息
execute as @a[gamemode=!spectator] at @s store result score @s posX run data get entity @s Pos[0] 1
execute as @a[gamemode=!spectator] at @s store result score @s posY run data get entity @s Pos[1] 1
execute as @a[gamemode=!spectator] at @s store result score @s posZ run data get entity @s Pos[2] 1

# 正确的维度检测方式
execute as @a[gamemode=!spectator] at @s if dimension minecraft:overworld run scoreboard players set @s dimension 0
execute as @a[gamemode=!spectator] at @s if dimension minecraft:the_nether run scoreboard players set @s dimension 1
execute as @a[gamemode=!spectator] at @s if dimension minecraft:the_end run scoreboard players set @s dimension 2

# 检测新的死亡（死亡次数增加了）
execute as @a unless score @s deathCount = @s lastDeath run function death:death_message

# 更新上次死亡计数记录
execute as @a run scoreboard players operation @s lastDeath = @s deathCount
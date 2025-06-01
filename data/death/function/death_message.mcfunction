# 存储死亡玩家坐标到记分板
execute store result score @s posX run data get entity @s Pos[0] 1
execute store result score @s posY run data get entity @s Pos[1] 1  
execute store result score @s posZ run data get entity @s Pos[2] 1

# 检测维度并设置维度ID
execute if dimension minecraft:overworld run scoreboard players set @s dimension 0
execute if dimension minecraft:the_nether run scoreboard players set @s dimension 1
execute if dimension minecraft:the_end run scoreboard players set @s dimension 2

# 根据维度显示不同的死亡消息
execute if score @s dimension matches 0 run tellraw @a [{"text":"☠ ","color":"red"},{"selector":"@s","color":"yellow"},{"text":" 在 ","color":"white"},{"text":"主世界","color":"green"},{"text":" 坐标 ","color":"white"},{"text":"[","color":"gray"},{"score":{"name":"@s","objective":"posX"},"color":"aqua"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"posY"},"color":"aqua"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"posZ"},"color":"aqua"},{"text":"]","color":"gray"},{"text":" 死亡了！","color":"white"}]

execute if score @s dimension matches 1 run tellraw @a [{"text":"☠ ","color":"red"},{"selector":"@s","color":"yellow"},{"text":" 在 ","color":"white"},{"text":"下界","color":"dark_red"},{"text":" 坐标 ","color":"white"},{"text":"[","color":"gray"},{"score":{"name":"@s","objective":"posX"},"color":"aqua"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"posY"},"color":"aqua"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"posZ"},"color":"aqua"},{"text":"]","color":"gray"},{"text":" 死亡了！","color":"white"}]

execute if score @s dimension matches 2 run tellraw @a [{"text":"☠ ","color":"red"},{"selector":"@s","color":"yellow"},{"text":" 在 ","color":"white"},{"text":"末地","color":"dark_purple"},{"text":" 坐标 ","color":"white"},{"text":"[","color":"gray"},{"score":{"name":"@s","objective":"posX"},"color":"aqua"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"posY"},"color":"aqua"},{"text":", ","color":"gray"},{"score":{"name":"@s","objective":"posZ"},"color":"aqua"},{"text":"]","color":"gray"},{"text":" 死亡了！","color":"white"}]
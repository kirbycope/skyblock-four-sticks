# Tag player so this only runs for them once
tag @a[tag=!init] add init

# Check for how many players are online
scoreboard objectives add players dummy
execute store result score @s players if entity @e[tag=init]

# 1. Top-Left
execute if score @s players matches 0..1 run tp @s -32 66 -32
execute if score @s players matches 0..1 run spawnpoint @s -32 66 -32
# 2. Top-right
execute if score @s players matches 2 run tp @s 32 66 -32
execute if score @s players matches 2 run spawnpoint @s 32 66 -32
# 3. Bottom-right
execute if score @s players matches 3 run tp @s 32 66 32
execute if score @s players matches 3 run spawnpoint @s 32 66 32
# 4. Bottom-left
execute if score @s players matches 4 run tp @s -32 66 32
execute if score @s players matches 4 run spawnpoint @s -32 66 32
# 5. Center
execute if score @s players matches 5.. run tp @s 0 66 0
execute if score @s players matches 5.. run spawnpoint @s 0 66 0

# Tag player so this only runs for them once
tag @a[tag=!init] add init

# Check for how many players are online
scoreboard objectives add players dummy
execute store result score @s players if entity @e[tag=init]
tp @s -32, 63,-32

# 1. Top-Left
execute if score @s entities matches 0..1 run tp @s -32 63 -32
# 2. Top-right
execute if score @s entities matches 2 run tp @s 32 63 -32
# 3. Bottom-right
execute if score @s entities matches 3 run tp @s 32 63 32
# 4. Bottom-left
execute if score @s entities matches 4 run tp @s -32 63 32
# 5. Center
execute if score @s entities matches 5.. run tp @s 0 63 0

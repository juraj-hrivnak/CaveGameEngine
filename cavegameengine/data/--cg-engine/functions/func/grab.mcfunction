
execute if block ~ ~ ~ air if block ~ ~1 ~ air as @e[tag=!PlayerRotDummy, tag=!PlayerRotDummy, distance=..2, limit=1] run tp @s ~ ~ ~
execute if block ~ ~ ~ air if block ~ ~1 ~ air as @e[tag=!PlayerRotDummy, tag=!PlayerRotDummy, distance=..2, limit=1] run tag @s add grabbed
execute if block ~ ~ ~ air if block ~ ~1 ~ air as @e[tag=!PlayerRotDummy, tag=!PlayerRotDummy, distance=2..] run tag @s remove grabbed

execute as @e[tag=grabbed] run data modify entity @s NoGravity set value 1b
execute as @e[tag=!grabbed] run data modify entity @s NoGravity set value 0b

execute if block ~ ~ ~ air if block ~ ~1 ~ air as @e[tag=!PlayerRotDummy, tag=!PlayerRotDummy, distance=..2, limit=1] run data modify entity @s Rotation set from entity @e[tag=PlayerRotDummy, limit=1, sort=nearest] Rotation
execute if block ~ ~ ~ air if block ~ ~1 ~ air as @e[tag=!PlayerRotDummy, tag=!PlayerRotDummy, distance=..2, limit=1] run data modify entity @s Motion set from entity @e[tag=PlayerRotDummy, limit=1, sort=nearest] Motion
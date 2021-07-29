
execute as @e[team=!mobs, team=!dead_mobs, tag=!DeathPosExeption] at @s if data entity @s PersistenceRequired run function minecraft:mob_team
# Execute all entites

execute as @e[team=mobs, nbt={AbsorptionAmount:0f}] at @s run function --cg-engine:--run/death/entity
# Entity have 0 health but still lives

execute as @e[team=dead_mobs] at @s run function --cg-engine:--run/death/entity_after
# Entity is being killed
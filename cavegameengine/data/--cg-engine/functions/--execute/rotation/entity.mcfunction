
function --cg-engine:global/exeptions
# this runs necessary exeptions for entities
# here you can add your custom exeption functions

execute as @e[tag=!EntityRotPosExeption] at @s run tag @s add EntityDummy
execute as @e[tag=!EntityRotPosExeption] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["EntityRotDummy"], WaitTime: 0, Particle:"block air"}
# this finds an entity and summons area_effect_cloud taged "EntityRotDummy" to its feet.

execute as @e[tag=!EntityRotPosExeption, tag=EntityDummy] as @e[sort=nearest, tag=EntityRotDummy] at @s run data modify entity @s Rotation set from entity @e[tag=EntityDummy, sort=nearest, limit=1] Rotation 
# this is copying rotation from nearest entity to area_effect_cloud with tag EntityRotDummy


execute as @e[tag=EntityDummy] as @e[type=area_effect_cloud, sort=nearest, tag=EntityRotDummy] at @s positioned ~ ~1.6 ~ run tp @s ^ ^ ^5

execute as @e[tag=EntityRotDummy] at @s run function --cg-engine:--run/rotation/entity

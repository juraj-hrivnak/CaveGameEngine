
function --cg-engine:global/exeptions
# this runs necessary exeptions for entities
# here you can add your custom exeption functions

execute as @a[tag=!PlayerRotPosExeption] at @s run tag @s add PlayerDummy
execute as @a[tag=!PlayerRotPosExeption] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["PlayerRotDummy"], WaitTime: 0, Particle:"block air"}
# this finds player and summons area_effect_cloud taged "PlayerRotDummy" to his feet.

execute as @a[tag=PlayerDummy] as @e[type=area_effect_cloud, sort=nearest, tag=PlayerRotDummy] at @s run data modify entity @s Rotation set from entity @p Rotation
# this is copying rotation from nearest player to area_effect_cloud with tag PlayerRotDummy


execute as @a[tag=PlayerDummy] as @e[type=area_effect_cloud, sort=nearest, tag=PlayerRotDummy] at @s positioned ~ ~1.6 ~ run tp @s ^ ^ ^5

execute as @e[tag=PlayerRotDummy] at @s run function --cg-engine:--run/rotation/player
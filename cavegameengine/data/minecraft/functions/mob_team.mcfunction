
execute store result entity @s AbsorptionAmount float 1 run data get entity @s Health
data merge entity @s {Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000}]}
team join mobs @s

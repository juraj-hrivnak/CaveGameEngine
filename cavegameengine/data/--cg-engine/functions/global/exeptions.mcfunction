
# this function run tag commands for entities that must by taged like this
# !!!CAUTION!!! Any changes in this function may cause issues in other functions

tag @a add EntityRotPosExeption
tag @a[gamemode=spectator] add PlayerRotPosExeption
tag @a[gamemode=!spectator] remove PlayerRotPosExeption

tag @e[type=painting] add DeathPosExeption 
tag @e[type=painting] add PlayerRotPosExeption
tag @e[type=painting] add EntityRotPosExeption
# Exeptions for painting
tag @e[type=armor_stand] add DeathPosExeption
# Exeption for

tag @e[type=item] add EntityRotPosExeption
tag @e[type=area_effect_cloud] add EntityRotPosExeption
tag @e[type=#arrows] add EntityRotPosExeption
tag @e[type=#impact_projectiles] add EntityRotPosExeption
tag @e[type=experience_orb] add EntityRotPosExeption
tag @e[type=experience_bottle] add EntityRotPosExeption
tag @e[type=potion] add EntityRotPosExeption
tag @e[type=lightning_bolt] add EntityRotPosExeption
tag @e[type=llama_spit] add EntityRotPosExeption
tag @e[type=leash_knot] add EntityRotPosExeption

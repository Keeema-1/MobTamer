
data modify storage mobtamer:temp data.target.UUID set from entity @s UUID
execute summon area_effect_cloud run function mobtamer:sys/player/pet/each/unique/custom_attack/target_start/aec

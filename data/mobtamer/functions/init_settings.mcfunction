data modify storage mobtamer:settings data merge value {equipment_when_tame:"only_initial_equipment"}
data modify storage mobtamer:settings data merge value {party_cost_max:1b}
data modify storage mobtamer:settings data merge value {status_variant:1b}
data modify storage mobtamer:settings data merge value {exp_display:1b}
data modify storage mobtamer:settings data merge value {store_when_sleep:"only_monster"}
data modify storage mobtamer:settings data merge value {party_slots:6}
scoreboard players set $mt.sys mt.slot 6
data modify storage mobtamer:settings data merge value {advancement_player:"one"}
data modify storage mobtamer:settings data merge value {tame_spawn_egg_pos:"here"}
data modify storage mobtamer:settings data merge value {can_store_down_pets:1b}
data modify storage mobtamer:settings data merge value {auto_store_down_pet:0b}
data modify storage mobtamer:settings data merge value {auto_store_down_pet_when_far:0b}
data modify storage mobtamer:settings data merge value {kill_down_pet:"never"}
scoreboard players set $mt.player.settings.baby_grow mt.score 1
scoreboard players set $mt.player.settings.default_strategy mt.score 2
data modify storage mobtamer:settings data merge value {team_collition:1b}
team modify mt.common collisionRule always
data modify storage mobtamer:settings data merge value {team_color:white}
team modify mt.common color white
data modify storage mobtamer:settings data merge value {weakness:"never"}
execute as @a run function mobtamer:sys/player/status_update

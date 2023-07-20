data modify storage mobtamer:settings data merge value {equipment_when_tame:"only_initial_equipment"}
data modify storage mobtamer:settings data merge value {party_cost_max:1b}
data modify storage mobtamer:settings data merge value {status_variant:1b}
data modify storage mobtamer:settings data merge value {exp_display:1b}
data modify storage mobtamer:settings data merge value {store_when_sleep:"only_monster"}
scoreboard players set $mt.player.settings.baby_grow mt.score 2
data modify storage mobtamer:settings data merge value {team_collition:1b}
team modify mt.common collisionRule always
data modify storage mobtamer:settings data merge value {team_color:white}
team modify mt.common color white
data modify storage mobtamer:settings data merge value {weakness:"never"}
execute as @a run function mobtamer:sys/player/status_update

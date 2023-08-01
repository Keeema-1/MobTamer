execute unless data storage mobtamer:settings data.equipment_when_tame run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：","color":"green"},{"text":"プレイヤー共通設定／テイム時のペットの装備","color":"yellow"}]
execute unless data storage mobtamer:settings data.equipment_when_tame run data modify storage mobtamer:settings data merge value {equipment_when_tame:"only_initial_equipment"}
execute unless data storage mobtamer:settings data.party_cost_max run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：","color":"green"},{"text":"プレイヤー共通設定／パーティーのコスト上限","color":"yellow"}]
execute unless data storage mobtamer:settings data.party_cost_max run data modify storage mobtamer:settings data merge value {party_cost_max:1b}
execute unless data storage mobtamer:settings data.status_variant run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：","color":"green"},{"text":"プレイヤー共通設定／モブの個体差","color":"yellow"}]
execute unless data storage mobtamer:settings data.status_variant run data modify storage mobtamer:settings data merge value {status_variant:1b}
execute unless data storage mobtamer:settings data.exp_display run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：","color":"green"},{"text":"プレイヤー共通設定／ペットの獲得経験値表示","color":"yellow"}]
execute unless data storage mobtamer:settings data.exp_display run data modify storage mobtamer:settings data merge value {exp_display:1b}
execute unless data storage mobtamer:settings data.store_when_sleep run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：","color":"green"},{"text":"プレイヤー共通設定／睡眠時のペット","color":"yellow"}]
execute unless data storage mobtamer:settings data.store_when_sleep run data modify storage mobtamer:settings data merge value {store_when_sleep:"only_monster"}
execute unless data storage mobtamer:settings data.team_collition run team modify mt.common collisionRule always
execute unless data storage mobtamer:settings data.team_collition run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：","color":"green"},{"text":"共通チーム設定／チームの衝突設定","color":"yellow"}]
execute unless data storage mobtamer:settings data.team_collition run data modify storage mobtamer:settings data merge value {team_collition:1b}
execute unless data storage mobtamer:settings data.team_color run team modify mt.common color white
execute unless data storage mobtamer:settings data.team_color run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：","color":"green"},{"text":"共通チーム設定／チームカラー","color":"yellow"}]
execute unless data storage mobtamer:settings data.team_color run data modify storage mobtamer:settings data merge value {team_color:white}
execute unless data storage mobtamer:settings data.weakness run execute as @a run function mobtamer:sys/player/status_update
execute unless data storage mobtamer:settings data.weakness run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：","color":"green"},{"text":"縛り設定／プレイヤーの攻撃力低下","color":"yellow"}]
execute unless data storage mobtamer:settings data.weakness run data modify storage mobtamer:settings data merge value {weakness:"never"}
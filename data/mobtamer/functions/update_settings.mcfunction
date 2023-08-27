execute unless data storage mobtamer:settings data.party_cost_max run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"一般設定／パーティーのコスト上限","color":"yellow"}]
execute unless data storage mobtamer:settings data.party_cost_max run data modify storage mobtamer:settings data merge value {party_cost_max:1b}
execute unless data storage mobtamer:settings data.status_variant run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"一般設定／モブの個体差","color":"yellow"}]
execute unless data storage mobtamer:settings data.status_variant run data modify storage mobtamer:settings data merge value {status_variant:1b}
execute unless data storage mobtamer:settings data.exp_display run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"一般設定／ペットの獲得経験値表示","color":"yellow"}]
execute unless data storage mobtamer:settings data.exp_display run data modify storage mobtamer:settings data merge value {exp_display:1b}
execute unless data storage mobtamer:settings data.store_when_sleep run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"一般設定／睡眠時のペット","color":"yellow"}]
execute unless data storage mobtamer:settings data.store_when_sleep run data modify storage mobtamer:settings data merge value {store_when_sleep:"only_monster"}
execute unless data storage mobtamer:settings data.party_slots run scoreboard players set $mt.sys mt.slot 6
execute unless data storage mobtamer:settings data.party_slots run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"一般設定／召喚ペット数の上限","color":"yellow"}]
execute unless data storage mobtamer:settings data.party_slots run data modify storage mobtamer:settings data merge value {party_slots:6}
execute unless data storage mobtamer:settings data.advancement_player run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"一般設定／進捗達成プレイヤー条件","color":"yellow"}]
execute unless data storage mobtamer:settings data.advancement_player run data modify storage mobtamer:settings data merge value {advancement_player:"one"}
execute unless data storage mobtamer:settings data.tame_spawn_egg_pos run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"一般設定／テイム成功時の卵の位置","color":"yellow"}]
execute unless data storage mobtamer:settings data.tame_spawn_egg_pos run data modify storage mobtamer:settings data merge value {tame_spawn_egg_pos:"here"}
execute unless data storage mobtamer:settings data.can_store_down_pets run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"ダウン設定／ダウン中のペットの格納","color":"yellow"}]
execute unless data storage mobtamer:settings data.can_store_down_pets run data modify storage mobtamer:settings data merge value {can_store_down_pets:1b}
execute unless data storage mobtamer:settings data.auto_store_down_pet run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"ダウン設定／ダウン時の自動格納","color":"yellow"}]
execute unless data storage mobtamer:settings data.auto_store_down_pet run data modify storage mobtamer:settings data merge value {auto_store_down_pet:0b}
execute unless data storage mobtamer:settings data.auto_store_down_pet_when_far run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"ダウン設定／ダウンペットと離れた時","color":"yellow"}]
execute unless data storage mobtamer:settings data.auto_store_down_pet_when_far run data modify storage mobtamer:settings data merge value {auto_store_down_pet_when_far:0b}
execute unless data storage mobtamer:settings data.kill_down_pet run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"ダウン設定／ダウンしたペットの死亡","color":"yellow"}]
execute unless data storage mobtamer:settings data.kill_down_pet run data modify storage mobtamer:settings data merge value {kill_down_pet:"never"}
scoreboard players set $mt.player.settings.baby_grow mt.score 1
scoreboard players set $mt.player.settings.default_strategy mt.score 2
execute unless data storage mobtamer:settings data.team_collition run team modify mt.common collisionRule always
execute unless data storage mobtamer:settings data.team_collition run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"共通チーム設定／チームの衝突設定","color":"yellow"}]
execute unless data storage mobtamer:settings data.team_collition run data modify storage mobtamer:settings data merge value {team_collition:1b}
execute unless data storage mobtamer:settings data.team_color run team modify mt.common color white
execute unless data storage mobtamer:settings data.team_color run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"共通チーム設定／チームカラー","color":"yellow"}]
execute unless data storage mobtamer:settings data.team_color run data modify storage mobtamer:settings data merge value {team_color:white}
execute unless data storage mobtamer:settings data.weakness run execute as @a run function mobtamer:sys/player/status_update
execute unless data storage mobtamer:settings data.weakness run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"縛り設定／プレイヤーの攻撃力低下","color":"yellow"}]
execute unless data storage mobtamer:settings data.weakness run data modify storage mobtamer:settings data merge value {weakness:"never"}
execute unless data storage mobtamer:settings data.player_data run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"データのリセット／プレイヤー情報全て","color":"yellow"}]
execute unless data storage mobtamer:settings data.player_data run data modify storage mobtamer:settings data merge value {player_data:0b}
execute unless data storage mobtamer:settings data.tame_data run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"データのリセット／テイム情報","color":"yellow"}]
execute unless data storage mobtamer:settings data.tame_data run data modify storage mobtamer:settings data merge value {tame_data:0b}
execute unless data storage mobtamer:settings data.all run tellraw @a [{"text":"データパック設定に新たな項目が追加されました：\n  ","color":"green"},{"text":"データのリセット／全てリセット","color":"yellow"}]
execute unless data storage mobtamer:settings data.all run data modify storage mobtamer:settings data merge value {all:0b}

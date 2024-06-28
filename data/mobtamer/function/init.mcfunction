
# forceload_pet_chunk:1b -> ペットのいるチャンクをforceloadする。
# forceload_pet_chunk:0b -> ペットのいるチャンクをforceloadしない。離れ過ぎた場合はアイテム化。
data modify storage mobtamer:settings data merge value {forceload_pet_chunk:1b}

# テイム時の装備:スポーン時の装備のみ
data modify storage mobtamer:settings data merge value {equipment_when_tame:"only_initial_equipment"}

advancement revoke @a from mobtamer:mobtamer/road_to_mobtamer
advancement revoke @a from mobtamer:mobtamer/tame/tame_type

function mobtamer:init_settings

# 上限と強化+の上限(up limit)
data modify storage mobtamer:settings data.values.power_up_max merge value {attack:6,max_health:40,armor:10,speed:28}

# 開放要素
# pet_equipment:
## 0: なし
## 1: 革防具，木のクワ
## 2: +金防具，木のツルハシ・シャベル
## 3: +チェーン防具，石のクワ・ツルハシ・シャベル
## 4: +木・石の剣
## 5: +鉄防具，斧以外の鉄ツール
data modify storage mobtamer:settings data.release_progress merge value {gacha:{},pet_equipment:0,pet_equipment_trader:0b}

forceload remove all

tellraw @a [{"storage": "mobtamer:text","nbt":"data.settings_initialized","interpret": true}]

gamerule sendCommandFeedback false

execute if predicate mobtamer:trade_update_time run function mobtamer:sys/trader/daily_change/0

scoreboard players reset * mt.cost
scoreboard players reset * mt.tame_type_count
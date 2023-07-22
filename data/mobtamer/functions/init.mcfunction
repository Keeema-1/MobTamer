
# forceload_pet_chunk:1b -> ペットのいるチャンクをforceloadする。
# forceload_pet_chunk:0b -> ペットのいるチャンクをforceloadしない。離れ過ぎた場合はアイテム化。
data modify storage mobtamer:settings data merge value {forceload_pet_chunk:1b}

advancement revoke @a from mobtamer:mobtamer/road_to_mobtamer
advancement revoke @a from mobtamer:mobtamer/tame/tame_type

function mobtamer:init_settings

# 上限と強化+の上限(up limit)
data modify storage mobtamer:settings data.values.power_up_max merge value {attack:6,max_health:40}

# 開放要素
# pet_equipment:
## 0: なし
## 1: 革防具，木のクワ
## 2: +金防具，木のツルハシ・シャベル
## 3: +チェーン防具，石のクワ・ツルハシ・シャベル
## 4: +木・石の剣
## 5: +鉄防具，斧以外の鉄ツール
data modify storage mobtamer:settings data.release_progress merge value {gacha:{},pet_equipment:0,pet_equipment_trader:1b}

data modify storage mobtamer:settings data merge value {version:{main:10000, beta:1}}
forceload remove all

scoreboard players set $mt.sys mt.slot 6

tellraw @a {"text": "設定が初期化されました。","color": "green"}

gamerule sendCommandFeedback false

scoreboard objectives add mt.id dummy
scoreboard objectives add mt.login dummy
scoreboard objectives add mt.slot dummy
scoreboard objectives add mt.health dummy
scoreboard objectives add mt.max_health dummy
scoreboard objectives add mt.xp dummy
scoreboard objectives add mt.settings dummy
scoreboard objectives add mt.tame_type_count dummy
# プレイヤー：パーティーの最大コスト，ペット：自身のコスト
scoreboard objectives add mt.cost dummy
# 共通．(etc. チャンスタイム)
scoreboard objectives add mt.score dummy
# スポーンエッグでの召喚のチェックを，「スポーンエッグを手に持っている時から一定tick」にする
# さらに、召喚後のペットにこのスコアを付与し、一定時間後にコスト計算を行う（召喚直後は武器が反映されないことが多いため）
scoreboard objectives add mt.summon_check_time dummy

scoreboard objectives add mt.trigger trigger
scoreboard players enable @a mt.trigger

scoreboard objectives add mt.dropped.fishing_rod dropped:fishing_rod
scoreboard objectives add mt.dropped.golden_apple dropped:golden_apple
scoreboard objectives add mt.sneak_time custom:sneak_time
# scoreboard objectives add mt.jump custom:jump

team add mt.common "共通チーム"

tellraw @a "Loaded: MobTamer_For20"

# function mobtamer:sys/set_text/0
function mobtamer:sys/database/0

execute unless data storage mobtamer:settings data run function mobtamer:init

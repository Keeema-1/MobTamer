scoreboard objectives add mt.id dummy
scoreboard objectives add mt.login dummy
scoreboard objectives add mt.slot dummy
scoreboard objectives add mt.health dummy
scoreboard objectives add mt.max_health dummy
# 共通．(etc. チャンスタイム)
scoreboard objectives add mt.score dummy
# スポーンエッグでの召喚のチェックを，「スポーンエッグを手に持っている時から一定tick」にする
scoreboard objectives add mt.summon_check_time dummy

scoreboard objectives add mt.dropped.fishing_rod dropped:fishing_rod
scoreboard objectives add mt.dropped.golden_apple dropped:golden_apple

team add mt.common

tellraw @a "Loaded: MobTamer_For20"

function mobtamer:sys/set_text/0

function mobtamer:init_settings

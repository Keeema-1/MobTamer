scoreboard objectives add mt.id dummy
scoreboard objectives add mt.login dummy
scoreboard objectives add mt.slot dummy
scoreboard objectives add mt.health dummy
scoreboard objectives add mt.max_health dummy
scoreboard objectives add mt.xp dummy
# 共通．(etc. チャンスタイム)
scoreboard objectives add mt.score dummy
# スポーンエッグでの召喚のチェックを，「スポーンエッグを手に持っている時から一定tick」にする
scoreboard objectives add mt.summon_check_time dummy

scoreboard objectives add mt.trigger trigger
scoreboard players enable @a mt.trigger

scoreboard objectives add mt.dropped.fishing_rod dropped:fishing_rod
scoreboard objectives add mt.dropped.golden_apple dropped:golden_apple
scoreboard objectives add mt.sneak_time custom:sneak_time
# scoreboard objectives add mt.jump custom:jump

team add mt.common

tellraw @a "Loaded: MobTamer_For20"

# function mobtamer:sys/set_text/0
function mobtamer:sys/database/0

execute unless data storage mobtamer:settings data run function mobtamer:init

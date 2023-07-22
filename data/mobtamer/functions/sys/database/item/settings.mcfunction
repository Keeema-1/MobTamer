data modify storage mobtamer:database data.item.settings set value {mt_settings:1b,title:"【モブテイマー】データパック設定",author:"",filtered_title:"title",pages:[],HideFlags:32}
data modify storage mobtamer:database data.item.settings.pages append value '["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\nプレイヤー共通設定\\n\\n","bold":"true","underlined":true},{"text":"\\n"},{"text":"[テイム時のペットの装備]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 11"},"hoverEvent": {"action": "show_text","value": [{"text":"スポーン時の装備のみ有効とするか否か"},{"text":"\\n\\nデフォルト：スポーン時の装備のみ有効","color":"gray"}]}},{"text":"\\n"},{"text":"[パーティーのコスト上限]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 21"},"hoverEvent": {"action": "show_text","value": [{"text":"パーティーのコスト上限を有効とするか否か"},{"text":"\\n\\nデフォルト：有効","color":"gray"}]}},{"text":"\\n"},{"text":"[モブの個体差]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 31"},"hoverEvent": {"action": "show_text","value": [{"text":"テイムしたモブのステータスの個体差を有効とするか否か"},{"text":"\\n\\nデフォルト：有効","color":"gray"}]}},{"text":"\\n"},{"text":"[ペットの獲得経験値表示]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 41"},"hoverEvent": {"action": "show_text","value": [{"text":"ペットがモブを倒して獲得した経験値を表示するか否か"},{"text":"\\n\\nデフォルト：有効","color":"gray"}]}},{"text":"\\n"},{"text":"[睡眠時のペット]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 51"},"hoverEvent": {"action": "show_text","value": [{"text":"睡眠可能な時間にベッドの前に立ったとき、ペットをアイテム化するか否か"},{"text":"\\n\\nデフォルト：モンスターのペットのみアイテム化する","color":"gray"}]}}]'
data modify storage mobtamer:database data.item.settings.pages append value '["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\nプレイヤーごとの設定\\n\\n","bold":"true","underlined":true},{"text":"\\n"},{"text":"[子供ペットの成長]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 61"},"hoverEvent": {"action": "show_text","value": [{"text":"子供のペットの成長を有効とするか否か"},{"text":"\\n\\nデフォルト：無効","color":"gray"}]}}]'
data modify storage mobtamer:database data.item.settings.pages append value '["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\n共通チーム設定\\n\\n","bold":"true","underlined":true},{"text":"\\n"},{"text":"[チームの衝突設定]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 71"},"hoverEvent": {"action": "show_text","value": [{"text":"ペットを含む味方同士での衝突を有効とするか否か"},{"text":"\\n\\nデフォルト：有効","color":"gray"}]}},{"text":"\\n"},{"text":"[チームカラー]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 81"},"hoverEvent": {"action": "show_text","value": [{"text":"チームカラーの変更"},{"text":"\\n\\nデフォルト：ホワイト","color":"gray"}]}}]'
data modify storage mobtamer:database data.item.settings.pages append value '["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\nチーム参加\\n\\n","bold":"true","underlined":true},{"text":"\\n"},{"text":"[各チームの参加者一覧]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 91"},"hoverEvent": {"action": "show_text","value": [{"text":"各チームの参加者一覧を表示"},{"text":"\\n\\nデフォルト：","color":"gray"}]}},{"text":"\\n"},{"text":"[共通チームに参加]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 101"},"hoverEvent": {"action": "show_text","value": [{"text":"このチームは村人たちとは敵対しません"},{"text":"\\n\\nデフォルト：","color":"gray"}]}},{"text":"\\n"},{"text":"[赤チームに参加]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 111"},"hoverEvent": {"action": "show_text","value": [{"text":"このチームは村人たちと敵対します"},{"text":"\\n\\nデフォルト：","color":"gray"}]}},{"text":"\\n"},{"text":"[青チームに参加]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 121"},"hoverEvent": {"action": "show_text","value": [{"text":"このチームは村人たちと敵対します"},{"text":"\\n\\nデフォルト：","color":"gray"}]}},{"text":"\\n"},{"text":"[緑チームに参加]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 131"},"hoverEvent": {"action": "show_text","value": [{"text":"このチームは村人たちと敵対します"},{"text":"\\n\\nデフォルト：","color":"gray"}]}},{"text":"\\n"},{"text":"[橙チームに参加]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 141"},"hoverEvent": {"action": "show_text","value": [{"text":"このチームは村人たちと敵対します"},{"text":"\\n\\nデフォルト：","color":"gray"}]}}]'
data modify storage mobtamer:database data.item.settings.pages append value '["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\n縛り設定\\n\\n","bold":"true","underlined":true},{"text":"\\n"},{"text":"[プレイヤーの攻撃力低下]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 151"},"hoverEvent": {"action": "show_text","value": [{"text":"プレイヤーの攻撃力と矢のダメージが1/10に低下し、トライデントを投げられなくなる"},{"text":"\\n\\nデフォルト：無効","color":"gray"}]}}]'
data modify storage mobtamer:database data.item.settings.pages append value '["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\nデータ移行\\n\\n","bold":"true","underlined":true},{"text":"\\n"},{"text":"[データ移行]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 161"},"hoverEvent": {"action": "show_text","value": [{"text":"他のワールドにペットを持ち込む"},{"text":"\\n\\nデフォルト：","color":"gray"}]}}]'

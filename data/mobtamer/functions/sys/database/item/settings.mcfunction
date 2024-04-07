data modify storage mobtamer:database data.item.settings set value {mt_settings:1b,title:"【モブテイマー】データパック設定",author:"",filtered_title:"title",pages:[],HideFlags:32}
data modify storage mobtamer:database data.item.settings.pages append value '["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\n一般設定\\n\\n","bold":true,"underlined":true},{"text":"\\n"},{"text":"[パーティーのコスト上限]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 21"},"hoverEvent": {"action": "show_text","value": [{"text":"パーティーのコスト上限を有効とするか否か"},{"text":"\\n\\nデフォルト：有効","color":"gray"}]}},{"text":"\\n"},{"text":"[モブの個体差]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 31"},"hoverEvent": {"action": "show_text","value": [{"text":"テイムしたモブのステータスの個体差を有効とするか否か"},{"text":"\\n\\nデフォルト：有効","color":"gray"}]}},{"text":"\\n"},{"text":"[ペットの獲得経験値表示]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 41"},"hoverEvent": {"action": "show_text","value": [{"text":"ペットがモブを倒して獲得した経験値を表示するか否か"},{"text":"\\n\\nデフォルト：有効","color":"gray"}]}},{"text":"\\n"},{"text":"[睡眠時のペット]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 51"},"hoverEvent": {"action": "show_text","value": [{"text":"睡眠可能な時間にベッドの前に立ったとき、ペットをアイテム化するか否か"},{"text":"\\n\\nデフォルト：モンスターのペットのみアイテム化する","color":"gray"}]}},{"text":"\\n"},{"text":"[召喚ペット数の上限]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 221"},"hoverEvent": {"action": "show_text","value": [{"text":"一度に召喚できるペットの数の上限"},{"text":"\\n\\nデフォルト：6体","color":"gray"}]}},{"text":"\\n"},{"text":"[進捗達成プレイヤー条件]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 231"},"hoverEvent": {"action": "show_text","value": [{"text":"テイム進捗を達成するプレイヤーの条件を変更"},{"text":"\\n\\nデフォルト：金のリンゴを投げたプレイヤーのみ","color":"gray"}]}},{"text":"\\n"},{"text":"[テイム成功時の卵の位置]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 241"},"hoverEvent": {"action": "show_text","value": [{"text":"テイム成功時にペットがアイテム化する位置を変更"},{"text":"\\n\\nデフォルト：その場所に落ちる","color":"gray"}]}}]'
data modify storage mobtamer:database data.item.settings.pages append value '["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\nダウン設定\\n\\n","bold":true,"underlined":true},{"text":"\\n"},{"text":"[ダウン中のペットの格納]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 181"},"hoverEvent": {"action": "show_text","value": [{"text":"ダウン中のペットをアイテム化できるか否か"},{"text":"\\n\\nデフォルト：可","color":"gray"}]}},{"text":"\\n"},{"text":"[ダウン時の自動格納]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 191"},"hoverEvent": {"action": "show_text","value": [{"text":"ダウンしたペットを自動でアイテム化するか否か"},{"text":"\\n\\nデフォルト：無効","color":"gray"}]}},{"text":"\\n"},{"text":"[ダウンペットと離れた時]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 201"},"hoverEvent": {"action": "show_text","value": [{"text":"ダウン状態のペットと32ブロック以上離れたときの仕様"},{"text":"\\n\\nデフォルト：何も起こらない","color":"gray"}]}},{"text":"\\n"},{"text":"[ダウンしたペットの死亡]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 211"},"hoverEvent": {"action": "show_text","value": [{"text":"ダウン状態のペットが消滅するか否か"},{"text":"\\n\\nデフォルト：死亡しない","color":"gray"}]}}]'
data modify storage mobtamer:database data.item.settings.pages append value '["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\nプレイヤーごとの設定\\n\\n","bold":true,"underlined":true},{"text":"\\n"},{"text":"[子供ペットの成長]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 61"},"hoverEvent": {"action": "show_text","value": [{"text":"子供のペットの成長を有効とするか否か"},{"text":"\\n\\nデフォルト：無効","color":"gray"}]}},{"text":"\\n"},{"text":"[デフォルトの作戦]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 171"},"hoverEvent": {"action": "show_text","value": [{"text":"ペット召喚時に適用される作戦を選択"},{"text":"\\n\\nデフォルト：攻撃優先","color":"gray"}]}}]'
data modify storage mobtamer:database data.item.settings.pages append value '["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\n共通チーム設定\\n\\n","bold":true,"underlined":true},{"text":"\\n"},{"text":"[チームの衝突設定]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 71"},"hoverEvent": {"action": "show_text","value": [{"text":"ペットを含む味方同士での衝突を有効とするか否か"},{"text":"\\n\\nデフォルト：有効","color":"gray"}]}},{"text":"\\n"},{"text":"[チームカラー]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 81"},"hoverEvent": {"action": "show_text","value": [{"text":"チームカラーの変更"},{"text":"\\n\\nデフォルト：ホワイト","color":"gray"}]}}]'
data modify storage mobtamer:database data.item.settings.pages append value '["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\nチーム参加\\n\\n","bold":true,"underlined":true},{"text":"\\n"},{"text":"[各チームの参加者一覧]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 91"},"hoverEvent": {"action": "show_text","value": [{"text":"各チームの参加者一覧を表示"}]}},{"text":"\\n"},{"text":"[共通チームに参加]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 101"},"hoverEvent": {"action": "show_text","value": [{"text":"このチームは村人たちとは敵対しません"}]}},{"text":"\\n"},{"text":"[赤チームに参加]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 111"},"hoverEvent": {"action": "show_text","value": [{"text":"このチームは村人たちと敵対します"}]}},{"text":"\\n"},{"text":"[青チームに参加]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 121"},"hoverEvent": {"action": "show_text","value": [{"text":"このチームは村人たちと敵対します"}]}},{"text":"\\n"},{"text":"[緑チームに参加]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 131"},"hoverEvent": {"action": "show_text","value": [{"text":"このチームは村人たちと敵対します"}]}},{"text":"\\n"},{"text":"[橙チームに参加]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 141"},"hoverEvent": {"action": "show_text","value": [{"text":"このチームは村人たちと敵対します"}]}}]'
data modify storage mobtamer:database data.item.settings.pages append value '["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\n縛り設定\\n\\n","bold":true,"underlined":true},{"text":"\\n"},{"text":"[プレイヤーの攻撃力低下]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 151"},"hoverEvent": {"action": "show_text","value": [{"text":"プレイヤーの攻撃力と矢のダメージが1/10に低下し、トライデントを投げられなくなる"},{"text":"\\n\\nデフォルト：無効","color":"gray"}]}}]'
data modify storage mobtamer:database data.item.settings.pages append value '["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\nデータ移行\\n\\n","bold":true,"underlined":true},{"text":"\\n"},{"text":"[データ移行]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 161"},"hoverEvent": {"action": "show_text","value": [{"text":"他のワールドにペットを持ち込む"}]}}]'
data modify storage mobtamer:database data.item.settings.pages append value '["",{"text":"                        "},{"text":"[⟳]","color":"light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set -1"},"hoverEvent": {"action": "show_text","value": [{"text":"本を更新\\n(データパックをアップデートした際に更新してください)","color":"gray"}]}},{"text":"\\nデータのリセット\\n\\n","bold":true,"underlined":true},{"text":"\\n"},{"text":"[プレイヤー情報全て]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 301"},"hoverEvent": {"action": "show_text","value": [{"text":"自身の達成したデータパック進捗やテイムした種類の記録を全て削除します"}]}},{"text":"\\n"},{"text":"[テイム情報]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 311"},"hoverEvent": {"action": "show_text","value": [{"text":"自身のテイムに関する記録を削除します"}]}},{"text":"\\n"},{"text":"[全てリセット]","color": "light_purple","clickEvent":{"action": "run_command","value": "/trigger mt.trigger set 321"},"hoverEvent": {"action": "show_text","value": [{"text":"ログイン中のプレイヤー全員の進捗、テイム記録、解放された取引内容など、全てをリセットします（召喚中のペットは消滅します）"}]}}]'

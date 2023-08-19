
data modify storage mobtamer:text data.settings_initialized set value '{"text": "設定が初期化されました。","color": "green"}'
data modify storage mobtamer:text data.version_changed set value '{"text": "*データパックのバージョンが変更されました。","color": "green"}'

data modify storage mobtamer:text data.data_transfer.explain set value '[{"text": "このエンティティにアイテムを入れ、ワールドフォルダの","color": "yellow"},{"text": "data","color": "green"},{"text": "フォルダにある","color": "yellow"},{"text": "command_storage_mobtamer_transfer.dat","color": "green"},{"text": "を移行先の同じ場所にコピーして移行することができます。","color": "yellow"}]'
data modify storage mobtamer:text data.data_transfer.cannot set value '{"text":"データ移行用エンティティはワールド上に2つ以上設置できません。","color":"red"}'

data modify storage mobtamer:text data.team.join.blue set value '{"text":"青チームに参加しました。","color":"blue"}'
data modify storage mobtamer:text data.team.join.gold set value '{"text":"橙チームに参加しました。","color":"gold"}'
data modify storage mobtamer:text data.team.join.red set value '{"text":"赤チームに参加しました。","color":"red"}'
data modify storage mobtamer:text data.team.join.green set value '{"text":"緑チームに参加しました。","color":"green"}'
data modify storage mobtamer:text data.team.join.common set value '{"text":"共通チームに参加しました。"}'

data modify storage mobtamer:text data.team.list.common set value '{"text":"＜共通チームの参加者一覧＞"}'
data modify storage mobtamer:text data.team.list.blue set value '{"text":"＜青チームの参加者一覧＞","color":"blue"}'
data modify storage mobtamer:text data.team.list.red set value '{"text":"＜赤チームの参加者一覧＞","color":"red"}'
data modify storage mobtamer:text data.team.list.gold set value '{"text":"＜橙チームの参加者一覧＞","color":"gold"}'
data modify storage mobtamer:text data.team.list.green set value '{"text":"＜緑チームの参加者一覧＞","color":"green"}'

data modify storage mobtamer:text data.cost.up set value '{"text":"パーティーのコスト上限が増加しました。"}'

data modify storage mobtamer:text data.get.conductor set value '{"text":"進捗達成の報酬としてコンダクターを入手しました。","color": "yellow"}'

data modify storage mobtamer:text data.trader.trade_unlock set value '{"text":"テイマー商人の取引の抽選に以下が追加されました。","color": "green"}'

data modify storage mobtamer:text data.power_up.cannot set value '{"text": "他の強化モードのペットと近すぎます。","color": "red"}'

data modify storage mobtamer:text data.store.common set value '{"text":"ペットがアイテム化されました。","color": "yellow"}'
data modify storage mobtamer:text data.store.down_far set value '{"text":"ダウン状態のペットと離れすぎたため、アイテム化されました。","color": "yellow"}'
data modify storage mobtamer:text data.store.drow set value '{"text":" は水に溺れてしまったので、アイテム化されました。","color": "yellow"}'
data modify storage mobtamer:text data.store.cost_over set value '{"text": "パーティーのコスト上限を超えたため、アイテム化されました。","color": "red"}'

data modify storage mobtamer:text data.pet.die set value '{"text":"が死亡しました。","color":"red"}'
data modify storage mobtamer:text data.pet.custom_attack set value '{"text":"が攻撃可能になりました。","color":"yellow"}'
data modify storage mobtamer:text data.pet.release set value '{"text":"をリリースしました。","color":"yellow"}'
data modify storage mobtamer:text data.pet.tame set value '{"text":" のテイムに成功しました！","color":"yellow"}'

data modify storage mobtamer:text data.ride.too_weight set value '{"text": "重量オーバーです。","color": "red"}'

data modify storage mobtamer:text data.unique.phantom.store set value '{"text":"ファントムは日中の間には召喚できません。","color": "red"}'
data modify storage mobtamer:text data.unique.silverfish.store set value '{"text":"シルバーフィッシュが石に隠れてしまったため、アイテム化されました。","color": "red"}'

data modify storage mobtamer:text data.tutorial.welcome append value '{"text":"モブテイマーの世界へようこそ！","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.welcome append value '[{"text":"この世界では、","color": "green","italic": true},{"translate":"item.minecraft.golden_apple","color": "aqua","italic":true},{"text":"を使ってすべてのモブをテイムすることができます。","color": "green","italic": true}]'
data modify storage mobtamer:text data.tutorial.welcome append value '{"text":"テイムしたモブはあなたのペットとなり、連れて歩いたり、共に戦わせることができるようになります。","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.welcome append value '{"text":"わからないことがあれば、モブテイマーの指南書があなたを導いてくれるでしょう。","color": "green","italic": true}'

data modify storage mobtamer:text data.tutorial.conductor append value '{"text":"＜コンダクターについて＞","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.conductor append value '{"text":"コンダクターというアイテムを使用することで、モブにさまざまなアクションを行うことができます。（例えば、ペットをアイテム化したり、モブに騎乗することなどが可能です。）","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.conductor append value '{"text":"コンダクターはテイマー商人と呼ばれる特別な行商人から買うことができます。テイマー商人に会うためのアイテムは、通常の行商人との交易で入手することができます。","color": "green","italic": true}'

data modify storage mobtamer:text data.common.nothing set value '{"text":"  なし"}'
data modify storage mobtamer:text data.common.for_pet set value '{"text":"（ペット用）"}'
data modify storage mobtamer:text data.common.summon_trader set value '{"text":"テイマー商人を呼ぶ"}'
data modify storage mobtamer:text data.common.summon_equipment_trader set value '{"text":"ペット用装備商人を呼ぶ"}'
data modify storage mobtamer:text data.common.total_cost set value '{"text": "パーティーの合計コスト"}'

data modify storage mobtamer:text data.common.bronze_gacha set value '{"text":"ブロンズガチャ"}'
data modify storage mobtamer:text data.common.silver_gacha set value '{"text":"シルバーガチャ"}'
data modify storage mobtamer:text data.common.gold_gacha set value '{"text":"ゴールドガチャ"}'
data modify storage mobtamer:text data.common.diamond_gacha set value '{"text":"ダイヤガチャ"}'

team modify mt.common displayName "共通チーム"

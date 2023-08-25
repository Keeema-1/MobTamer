
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

data modify storage mobtamer:text data.tame.tame_type_count set value '{"text":"テイムしたモブの種類"}'

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
data modify storage mobtamer:text data.pet.down set value '{"text":" がダウンしました。","color":"red"}'

data modify storage mobtamer:text data.ride.too_weight set value '{"text": "重量オーバーです。","color": "red"}'

data modify storage mobtamer:text data.caution.air set value '{"text":"　地上で呼吸できないモブは、ペットにすると地上でも呼吸ができるようになります。"}'
data modify storage mobtamer:text data.caution.bucket set value '{"text":"　ペットをバケツで回収するとペットデータが消えてしまいます。"}'
data modify storage mobtamer:text data.caution.creeper set value '{"text":"　ペットのクリーパーは爆破すると消滅してしまいます。"}'
data modify storage mobtamer:text data.caution.drowned set value '{"text":"　ペットのドラウンドは敵のドラウンドを攻撃することができません。"}'
data modify storage mobtamer:text data.caution.ender_dragon1 set value '{"text":"　エンダードラゴンは地形を破壊します。"}'
data modify storage mobtamer:text data.caution.ender_dragon2 set value '{"text":"　エンダードラゴンはペット状態でも周囲のモブ（プレイヤー含む）にダメージを与えます。"}'
data modify storage mobtamer:text data.caution.evoker set value '{"text":"　ペットのエヴォーカーが召喚したヴェックスも味方になります。"}'
data modify storage mobtamer:text data.caution.iron_golem set value '{"text":"　ペットのアイアンゴーレムが味方のモンスターを攻撃してしまう場合があります。"}'
data modify storage mobtamer:text data.caution.phantom set value '{"text":"　ファントムは日中に召喚することはできず、アイテム化されます。"}'
data modify storage mobtamer:text data.caution.piglin1 set value '{"text":"　ピグリンとウィザースケルトンはペット同士でも敵対してしまいます。"}'
data modify storage mobtamer:text data.caution.piglin2 set value '{"text":"　ピグリン族のペットはピグリン族を攻撃しません。"}'
data modify storage mobtamer:text data.caution.raider set value '{"text":"　邪悪な村人のペットは邪悪な村人を攻撃しません。"}'
data modify storage mobtamer:text data.caution.silverfish set value '{"text":"　シルバーフィッシュは石の上に立つと石に隠れてしまう性質があるので、石の上に立ったときにアイテム化されるようになっています。"}'
data modify storage mobtamer:text data.caution.slimes set value '{"text":"　スライムやマグマキューブはペットになっても近づいたプレイヤーにダメージを与えてしまいます。"}'
data modify storage mobtamer:text data.caution.summon set value '{"text":"　召喚したいモブと同じ種族のモブに目線を合わせてスポーンエッグを使用すると、ペットデータの消えた子供のモブを召喚してしまうことがあります。"}'
data modify storage mobtamer:text data.caution.wither_skeleton set value '{"text":"　ピグリンとウィザースケルトンはペット同士でも敵対してしまいます。"}'
data modify storage mobtamer:text data.caution.wither1 set value '{"text":"　ウィザーは周囲のチーム外のモブを無差別に攻撃します。"}'
data modify storage mobtamer:text data.caution.wither2 set value '{"text":"　ウィザーはアンデッドを攻撃しません。"}'
data modify storage mobtamer:text data.caution.zoglin set value '{"text":"　ゾグリンは周囲のチーム外のモブを無差別に攻撃します。"}'
data modify storage mobtamer:text data.caution.zombification set value '{"text":"　ピグリン、ホグリンはペットにすると現世でもゾンビ化しなくなります。"}'

data modify storage mobtamer:text data.mode.info set value '{"text":"情報"}'
data modify storage mobtamer:text data.mode.stop set value '{"text":"停止"}'
data modify storage mobtamer:text data.mode.gather set value '{"text":"集合"}'
data modify storage mobtamer:text data.mode.attack set value '{"text":"攻撃"}'
data modify storage mobtamer:text data.mode.store set value '{"text":"格納"}'
data modify storage mobtamer:text data.mode.ride set value '{"text":"騎乗"}'
data modify storage mobtamer:text data.mode.power_up set value '{"text":"強化"}'
data modify storage mobtamer:text data.mode.strategy set value '{"text":"作戦"}'

data modify storage mobtamer:text data.strategy.attack set value '{"text":"攻撃優先"}'
data modify storage mobtamer:text data.strategy.balance set value '{"text":"バランス"}'
data modify storage mobtamer:text data.strategy.recover set value '{"text":"回復優先"}'
data modify storage mobtamer:text data.strategy.follow set value '{"text":"追従優先"}'

data modify storage mobtamer:text data.ride.over_mob set value '{"text":"上に乗るモブ"}'
data modify storage mobtamer:text data.ride.over_player set value '{"text":"上に乗るプレイヤー"}'
data modify storage mobtamer:text data.ride.stop set value '{"text":"騎乗をやめる"}'
data modify storage mobtamer:text data.ride.select_over set value '{"text":"騎乗するモブを選択"}'
data modify storage mobtamer:text data.ride.select_under set value '{"text":"下のモブを選択"}'
data modify storage mobtamer:text data.ride.over set value '{"text":"上"}'
data modify storage mobtamer:text data.ride.under set value '{"text":"下"}'

data modify storage mobtamer:text data.unique.phantom.store set value '{"text":"ファントムは日中の間には召喚できません。","color": "red"}'
data modify storage mobtamer:text data.unique.silverfish.store set value '{"text":"シルバーフィッシュが石に隠れてしまったため、アイテム化されました。","color": "red"}'

data modify storage mobtamer:text data.tutorial.welcome append value '{"text":"モブテイマーの世界へようこそ！","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.welcome append value '[{"text":"この世界では、","color": "green","italic": true},{"translate":"item.minecraft.golden_apple","color": "aqua","italic":true},{"text":"を使ってすべてのモブをテイムすることができます。","color": "green","italic": true}]'
data modify storage mobtamer:text data.tutorial.welcome append value '{"text":"テイムしたモブはあなたのペットとなり、連れて歩いたり、共に戦わせることができるようになります。","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.welcome append value '{"text":"わからないことがあれば、モブテイマーの指南書があなたを導いてくれるでしょう。","color": "green","italic": true}'

data modify storage mobtamer:text data.tutorial.conductor append value '{"text":"＜コンダクターについて＞","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.conductor append value '{"text":"コンダクターというアイテムを使用することで、モブにさまざまなアクションを行うことができます。（例えば、ペットをアイテム化したり、モブに騎乗することなどが可能です。）","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.conductor append value '{"text":"コンダクターはテイマー商人と呼ばれる特別な行商人から買うことができます。テイマー商人に会うためのアイテムは、通常の行商人との交易で入手することができます。","color": "green","italic": true}'

data modify storage mobtamer:text data.tutorial.pet_equipment append value '{"text":"＜ペット用装備について＞","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.pet_equipment append value '{"text":"テイムしたモブの種類が増えると、テイマー商人の取引にペット用装備が追加されていきます。","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.pet_equipment append value '{"text":"ペット用装備の取引はランダムに変化し、毎朝に更新されます。","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.pet_equipment append value '{"text":"コンダクターで停止させたペットにペット用装備を投げることで、ペットに装備させることができます。","color": "green","italic": true}'

data modify storage mobtamer:text data.tutorial.trader append value '{"text":"＜テイマー商人について＞","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.trader append value '{"text":"通常の行商人の取引にテイマー商人を呼ぶためのアイテムが追加されます。","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.trader append value '{"text":"テイマー商人との取引ではコンダクターやデータパック設定、指南書などを入手することができます。","color": "green","italic": true}'
data modify storage mobtamer:text data.tutorial.trader append value '{"text":"進捗達成の報酬で取引は増え、ペットガチャやペット用装備が追加されるようになります。","color": "green","italic": true}'

data modify storage mobtamer:text data.item.conductor.Name set value '{"text":"コンダクター","italic":false}'
data modify storage mobtamer:text data.item.conductor.Lore.info set value '{"text":" 【モード：情報】","italic":"false","color":"green"}'
data modify storage mobtamer:text data.item.conductor.Lore.stop set value '{"text":" 【モード：停止】","italic":"false","color":"blue"}'
data modify storage mobtamer:text data.item.conductor.Lore.gather set value '{"text":" 【モード：集合】","italic":"false","color":"yellow"}'
data modify storage mobtamer:text data.item.conductor.Lore.attack set value '{"text":" 【モード：攻撃】","italic":"false","color":"red"}'
data modify storage mobtamer:text data.item.conductor.Lore.store set value '{"text":" 【モード：格納】","italic":"false","color":"gold"}'
data modify storage mobtamer:text data.item.conductor.Lore.ride set value '{"text":" 【モード：騎乗】","italic":"false","color":"dark_red"}'
data modify storage mobtamer:text data.item.conductor.Lore.power_up set value '{"text":" 【モード：強化】","italic":"false","color":"aqua"}'
data modify storage mobtamer:text data.item.conductor.Lore.strategy set value '{"text":" 【モード：作戦】","italic":"false","color":"light_purple"}'

data modify storage mobtamer:text data.item.conductor.Lore.common append value '{"text":" 短スニークで対象選択","italic":"false"}'
data modify storage mobtamer:text data.item.conductor.Lore.common append value '{"text":" アクションで実行","italic":"false"}'
data modify storage mobtamer:text data.item.conductor.Lore.common append value '{"text":" メインハンドからドロップでモード変更","italic":"false"}'
data modify storage mobtamer:text data.item.conductor.Lore.common append value '{"text":" スニーク中にアクションで作戦選択","italic":"false"}'

data modify storage mobtamer:text data.item.custom_attack.Name set value '{"text":"攻めの矢","italic": false}'
data modify storage mobtamer:text data.item.custom_attack.Lore set value ['[{"text":"コンダクターで停止させたペットに","italic":false}]','[{"text":"向かってドロップすることで、通常","italic":false}]','[{"text":"は攻撃をしないペットでも敵を攻撃","italic":false}]','[{"text":"するようになります。","italic":false}]','[{"text":"（実験的機能）","italic":false,"color":"red"}]']

data modify storage mobtamer:text data.item.pet_release.Name set value '{"text":"ペットリリース用アイテム","italic": false}'
data modify storage mobtamer:text data.item.pet_release.Lore set value ['[{"text":"コンダクターで停止させたペットに","italic":false}]','[{"text":"向かってドロップすることでペット","italic":false}]','[{"text":"をリリースします。","italic":false}]','[{"text":"リリースされたペットは共通チーム","italic":false}]','[{"text":"に所属し、自由に行動します。","italic":false}]']

data modify storage mobtamer:text data.item.trader.Name set value '{"text":"テイマー商人を呼ぶ","italic": false}'
data modify storage mobtamer:text data.item.pet_equipment_trader.Name set value '{"text":"ペット用装備商人を呼ぶ","italic": false}'
data modify storage mobtamer:text data.item.cheat_trader.Name set value '{"text":"チート商人を呼ぶ","italic": false}'

data modify storage mobtamer:text data.item.immediate_tame.Name set value '{"text":"確定テイム用アイテム","color":"aqua","italic": false}'

data modify storage mobtamer:text data.item.bronze_gacha.Name set value '{"text":"ブロンズガチャ","italic": false,"color":"#FF9C33"}'
data modify storage mobtamer:text data.item.bronze_gacha.Lore set value ['[{"text":"このアイテムをドロップすると、","italic":false}]','[{"text":"ランダムに抽選されたペットを入","italic":false}]','[{"text":"手することができます。","italic":false}]','[{"text":"","italic":false}]','[{"text":"排出対象：","italic":false,"color":"blue"}]','[{"text":"　一部のボス級モブを除く","italic":false,"color":"blue"}]','[{"text":"　テイム済みのみ","italic":false,"color":"blue"}]']
data modify storage mobtamer:text data.item.silver_gacha.Name set value '{"text":"シルバーガチャ","italic": false,"color":"#D1D1D1"}'
data modify storage mobtamer:text data.item.silver_gacha.Lore set value ['[{"text":"このアイテムをドロップすると、","italic":false}]','[{"text":"ランダムに抽選されたペットを入","italic":false}]','[{"text":"手することができます。","italic":false}]','[{"text":"","italic":false}]','[{"text":"排出対象：","italic":false,"color":"blue"}]','[{"text":"　一部の動物やボス級モブを除く","italic":false,"color":"blue"}]','[{"text":"　テイム済みのみ","italic":false,"color":"blue"}]']
data modify storage mobtamer:text data.item.gold_gacha.Name set value '{"text":"ゴールドガチャ","italic": false,"color":"yellow"}'
data modify storage mobtamer:text data.item.gold_gacha.Lore set value ['[{"text":"このアイテムをドロップすると、","italic":false}]','[{"text":"ランダムに抽選されたペットを入","italic":false}]','[{"text":"手することができます。","italic":false}]','[{"text":"","italic":false}]','[{"text":"排出対象：","italic":false,"color":"blue"}]','[{"text":"　一部の動物モブやエンダードラゴンを除く","italic":false,"color":"blue"}]','[{"text":"　テイム済みのみ","italic":false,"color":"blue"}]']
data modify storage mobtamer:text data.item.diamond_gacha.Name set value '{"text":"ダイヤガチャ","italic": false,"color":"aqua"}'
data modify storage mobtamer:text data.item.diamond_gacha.Lore set value ['[{"text":"このアイテムをドロップすると、","italic":false}]','[{"text":"ランダムに抽選されたペットを入","italic":false}]','[{"text":"手することができます。","italic":false}]','[{"text":"","italic":false}]','[{"text":"排出対象：","italic":false,"color":"blue"}]','[{"text":"　一部の動物モブやエンダードラゴンを除く","italic":false,"color":"blue"}]','[{"text":"　未テイム含む","italic":false,"color":"blue"}]','[{"text":"　コマンド限定モブを含む","italic":false,"color":"blue"}]']

data modify storage mobtamer:text data.item.manual.title set value "モブテイマーの指南書"

data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"はじめに\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　本データパックでは、すべてのモブをテイムしてペットにすることができます。\\n"},{"text":"\\n\\n\\n"},{"text":"配布ページにも解説記事があります。\\n"},{"text":"             ↓\\n"},{"text":"  [配布ページへジャンプ]\\n","color":"light_purple","clickEvent":{"action":"open_url","value":"https://github.com/Keeema-1/MobTamer/wiki"}}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"テイム方法-1\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　プレイヤーがドロップした金のリンゴをモブに当てるとテイムチャレンジが始まります。（金のリンゴが地面に着くまでにモブに当てる必要があります。）\\n"},{"text":"　テイムチャレンジを成功させると、そのモブはあなたのペットになります。\\n"}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"テイム方法-2\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　テイムチャレンジの成功条件／失敗条件は以下の通りです。\\n"},{"text":"\\n"},{"text":"成功条件:\\n"},{"text":"・そのモブを倒す\\n"},{"text":"\\n"},{"text":"失敗条件:\\n"},{"text":"・成功しないまま60秒が経過する\\n"}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"テイムに成功すると\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　テイムしたモブはアイテム化されます。そのアイテムを使用することでペットを召喚することができます。\\n"}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"ペットの行動\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　ペットとなったモブは以下の行動をするようになります。\\n"},{"text":"\\n"},{"text":"・プレイヤーに付いてくる\\n"},{"text":"・味方に敵対するモブ／プレイヤーが攻撃したモブを攻撃する\\n"}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"パーティー\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　プレイヤーと、プレイヤーが連れるペットを合わせてパーティーと呼びます。パーティーには6体までのペットを入れることができます。"}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"ペットのHP\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　HPが0になったペットはダウン状態になります。"},{"text":"\\n"},{"text":"ダウン状態のペットの近くでスニークを続けると、ダウン状態から復活させることができます。"},{"text":"\\n"},{"text":"\\n"},{"text":"　ペットがモブを敵視していない時には、ペットのHPが自動で回復します。"}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"コスト\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　ペットにはそれぞれコストが設定されています。パーティーにはコストの上限が存在し、パーティー内のペットの合計コストはそれ以下でなければいけません。\\n"},{"text":"コストの上限は進捗を達成することで増加していきます。"}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"コンダクター\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　コンダクターというアイテムを使用して、ペットに対してさまざまなアクションを行うことができます。コンダクターをメインハンドに持ってドロップすることで、モードを変更することができます。\\n"}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"コンダクターのモード\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　コンダクターには以下のモードが存在します。\\n"},{"text":"\\n      "},{"text":"【情報モード】","color":"green","hoverEvent": {"action":"show_text","contents": [{"text": "【情報モード】\\n\\nペットの情報を確認することができます。\\n\\nペットに視線を合わせて短スニークで対象ペットを選択します。視線上にペットがいない場合には、パーティー内のペットをすべて選択します。\\n\\nアクションで選択したペットの情報ウィンドウを表示します。ウィンドウから離れる、またはアイテムやモードを変更することでウィンドウを閉じることができます。"}]}},{"text":"\\n      "},{"text":"【停止モード】","color":"blue","hoverEvent": {"action":"show_text","contents": [{"text": "【停止モード】\\n\\nペットを停止させることができます。\\n\\nペットに視線を合わせて短スニークで対象ペットを選択します。視線上にペットがいない場合には、パーティー内のペットをすべて選択します。\\n\\nアクションで選択したペットを停止させることができます。停止しているペットに対してアクションを行うと、停止状態を解除します。"}]}},{"text":"\\n      "},{"text":"【集合モード】","color":"#FFD700","hoverEvent": {"action":"show_text","contents": [{"text": "【集合モード】\\n\\nペットを自身の周囲に集めることができます。\\n\\nペットに視線を合わせて短スニークで対象ペットを選択します。視線上にペットがいない場合には、パーティー内のペットをすべて選択します。\\n\\nアクションで選択したペットを自身の周囲に集めます。"}]}},{"text":"\\n      "},{"text":"【攻撃モード】","color":"red","hoverEvent": {"action":"show_text","contents": [{"text": "【攻撃モード】\\n\\nペットを任意のモブに敵視させることができます。\\n\\nペットに視線を合わせて短スニークで対象ペットを選択します。視線上にペットがいない場合には、パーティー内のペットをすべて選択します。\\n\\nプレイヤーがチーム外のモブに視線を合わせた状態でアクションを行うと、選択中のペットが視線上のモブに敵視します。"}]}},{"text":"\\n      "},{"text":"【格納モード】","color":"gold","hoverEvent": {"action":"show_text","contents": [{"text": "【格納モード】\\n\\nペットをアイテム化することができます。\\n\\nペットに視線を合わせて短スニークで対象ペットを選択します。視線上にペットがいない場合には、パーティー内のペットをすべて選択します。\\n\\nアクションで選択したペットをアイテム化します。"}]}},{"text":"\\n      "},{"text":"【騎乗モード】","color":"dark_red","hoverEvent": {"action":"show_text","contents": [{"text": "【騎乗モード】\\n\\n自身がペットに騎乗することや、ペットを他のペットに騎乗させることができます。\\n\\nはじめに騎乗時に上に乗るペットを選択します。ペットに視線を合わせて短スニークで対象ペットを選択します。視線上にペットがいない場合にはプレイヤーを選択します。\\n選択した状態でアクションを行うと、上に乗るペット／プレイヤーを決定します。\\n\\n次に下のペットを選択します。ペットに視線を合わせて短スニークで対象ペットを選択します。\\n選択した状態でアクションを行うと、下のペットを決定して騎乗を開始します。選択していない状態でアクションを行うと、上に乗るペットの選択に戻ります。\\n\\n既に騎乗しているペットを選択してアクションを行うと、ペットの騎乗を中止することができます。\\nプレイヤーはスニークで騎乗を中止します。"}]}},{"text":"\\n      "},{"text":"【強化モード】","color":"aqua","hoverEvent": {"action":"show_text","contents": [{"text": "【強化モード】\\n\\nペットを強化することができます。\\n\\nペットに視線を合わせて短スニークで対象ペットを選択します。\\n\\nアクションで選択したペットの強化メニューを開きます。\\n強化メニューでは、ペットが獲得したExp(経験値)を消費してペットのステータスを強化することができます。\\n強化メニューでは選択したペットはアイテム化します。アイテム化したペットを拾う、または一定以上離れることで強化メニューを閉じることができます。"}]}},{"text":"\\n      "},{"text":"【作戦モード】","color":"light_purple","hoverEvent": {"action":"show_text","contents": [{"text": "【作戦モード】\\n\\nペットの行動の優先順位を変更することができます。\\n\\nペットに視線を合わせて短スニークで対象ペットを選択します。\\n\\nスニーク中にアクションで変更先の作戦を選択します。\\nアクションで選択したペットの作戦を変更します。"}]}}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"テイマー商人\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　行商人の取引に、テイマー商人を呼ぶためのアイテムが追加されます。\\n"},{"text":"テイマー商人との取引ではコンダクターやデータパック設定、指南書などを入手することができます。\\n"},{"text":"進捗達成の報酬で取引は増え、ペットガチャやペット用装備が追加されるようになります。"}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"ペットの装備\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　スポーン時の装備は着たままの状態でテイムすることができます。\\n"},{"text":"　ペットの装備は耐久値が減少しません。\\n"},{"text":"　停止させているモブに防具立てを投げると、装備をすべて外すことができます。ただし、購入したペット用装備でなければ再び装備させることができません。"}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"ペットの強化\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　ペットはモブを倒した際にExp（経験値）を得ることがあります。そのExpを消費してペットを強化することができます。\\n"},{"text":"コンダクターの強化モードからペットを強化することができます。"}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"注意点\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　本データパックはMinecraftのゲームシステムをそのまま使用している部分が大きいため、ゲームシステムの仕様によって予期せぬ挙動を起こす場合があります。次ページ以降に注意点を記載します。\\n\\n"}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"注意点-1\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"・召喚したいモブと同じ種族のモブに目線を合わせてスポーンエッグを使用すると、ペットデータの消えた子供のモブを召喚してしまいます。\\n\\n"},{"text":"・ペットのをバケツで回収するとペットデータが消えてしまいます。\\n\\n"}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"注意点-2\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"・アイアンゴーレムが味方のモンスターを攻撃してしまうときがあります。\\n\\n"},{"text":"・ペットのスライムやマグマキューブ、エンダードラゴンに触れるとダメージを受けてしまいます。\\n\\n"},{"text":"・ペットのファントムは日中には召喚できません。\\n\\n"}]'
data modify storage mobtamer:text data.item.manual.pages append value '["",{"text":"注意点-3\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"・ペットのウィザースケルトン、ピグリン同士が敵対してしまうことがあります。\\n\\n"},{"text":"\\n"},{"text":"・モンスタースポナーに対してペットのスポーンエッグを使用できてしまいます。\\n\\n"}]'

data modify storage mobtamer:text data.entity_name.trader set value '{"text":"テイマー商人"}'
data modify storage mobtamer:text data.entity_name.pet_equipment_trader set value '{"text":"ペット用装備商人"}'
data modify storage mobtamer:text data.entity_name.cheat_trader set value '{"text":"チート商人"}'

data modify storage mobtamer:text data.common.nothing set value '{"text":"  なし"}'
data modify storage mobtamer:text data.common.for_pet set value '{"text":"（ペット用）"}'
data modify storage mobtamer:text data.common.summon_trader set value '{"text":"テイマー商人を呼ぶ"}'
data modify storage mobtamer:text data.common.summon_equipment_trader set value '{"text":"ペット用装備商人を呼ぶ"}'
data modify storage mobtamer:text data.common.total_cost set value '{"text": "パーティーの合計コスト"}'
data modify storage mobtamer:text data.common.caution set value '{"text":"注意"}'
data modify storage mobtamer:text data.common.selecting set value '{"text":"選択中"}'
data modify storage mobtamer:text data.common.mode set value '{"text":"モード"}'
data modify storage mobtamer:text data.common.all_pets set value '{"text":"全てのペット"}'
data modify storage mobtamer:text data.common.individual set value '{"text":"個別"}'
data modify storage mobtamer:text data.common.determine_by_action set value '{"text":"アクションで決定"}'

data modify storage mobtamer:text data.common.bronze_gacha set value '{"text":"ブロンズガチャ"}'
data modify storage mobtamer:text data.common.silver_gacha set value '{"text":"シルバーガチャ"}'
data modify storage mobtamer:text data.common.gold_gacha set value '{"text":"ゴールドガチャ"}'
data modify storage mobtamer:text data.common.diamond_gacha set value '{"text":"ダイヤガチャ"}'

team modify mt.common displayName "共通チーム"

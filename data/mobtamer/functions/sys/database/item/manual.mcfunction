data modify storage mobtamer:database data.item.manual set value {title:"モブテイマーの指南書",author:"",filtered_title:"title",pages:[],HideFlags:32}

data modify storage mobtamer:database data.item.manual.pages append value '["",{"text":"はじめに\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　本データパックでは、一部のモブをテイムしてペットにすることができます。\\n"}]'

data modify storage mobtamer:database data.item.manual.pages append value '["",{"text":"テイム方法-1\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　プレイヤーがドロップした金のリンゴをモブに当てるとテイムチャレンジが始まります。（金のリンゴが地面に着くまでにモブに当てる必要があります。）\\n"},{"text":"　テイムチャレンジを成功させると、そのモブはあなたのペットになります。\\n"}]'
data modify storage mobtamer:database data.item.manual.pages append value '["",{"text":"テイム方法-2\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　テイムチャレンジの成功条件／失敗条件は以下の通りです。\\n"},{"text":"\\n"},{"text":"成功条件:\\n"},{"text":"・そのモブのHPを一定量減少させる\\n"},{"text":"\\n"},{"text":"失敗条件:\\n"},{"text":"・成功しないまま60秒が経過する\\n"}]'
data modify storage mobtamer:database data.item.manual.pages append value '["",{"text":"テイムに成功すると\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　テイムしたモブはアイテム化されます。そのアイテムを使用することでペットを召喚することができます。\\n"}]'

data modify storage mobtamer:database data.item.manual.pages append value '["",{"text":"ペットの行動\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　ペットとなったモブは以下の行動をするようになります。\\n"},{"text":"\\n"},{"text":"・プレイヤーに付いてくる\\n"},{"text":"・味方に敵対するモブ／プレイヤーが攻撃したモブを攻撃する\\n"}]'

data modify storage mobtamer:database data.item.manual.pages append value '["",{"text":"パーティー\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　プレイヤーと、プレイヤーが連れるペットを合わせてパーティーと呼びます。パーティーには6体までのペットを入れることができます。"}]'

data modify storage mobtamer:database data.item.manual.pages append value '["",{"text":"コスト\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　ペットにはそれぞれコストが設定されています。パーティーにはコストの上限が存在し、パーティー内のペットの合計コストはそれ以下でなければいけません。\\n"},{"text":"コストの上限は進捗を達成することで増加していきます。"}]'

data modify storage mobtamer:database data.item.manual.pages append value '["",{"text":"コンダクター\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　コンダクターというアイテムを使用して、ペットに対してさまざまなアクションを行うことができます。コンダクターをメインハンドに持ってドロップすることで、モードを変更することができます。\\n"}]'

data modify storage mobtamer:database data.item.manual.pages append value '["",{"text":"コンダクターのモード\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　コンダクターには以下のモードが存在します。\\n"},{"text":"\\n      "},{"text":"【情報モード】","hoverEvent": {"action":"show_text","contents": [{"text": ""}]}},{"text":"\\n      "},{"text":"【停止モード】","hoverEvent": {"action":"show_text","contents": [{"text": "ペットを停止させることができます。\\n\\nペットに視線を合わせて短スニークで対象ペットを選択します。視線上にペットがいない場合には、パーティー内のペットをすべて選択します。\\n\\nアクションで選択したペットを停止させることができます。停止しているペットに対してアクションを行うと、停止状態を解除します。"}]}},{"text":"\\n      "},{"text":"【集合モード】","hoverEvent": {"action":"show_text","contents": [{"text": "ペットを自身の周囲に集めることができます。\\n\\nペットに視線を合わせて短スニークで対象ペットを選択します。視線上にペットがいない場合には、パーティー内のペットをすべて選択します。\\n\\nアクションで選択したペットを自身の周囲に集めます。"}]}},{"text":"\\n      "},{"text":"【攻撃モード】","hoverEvent": {"action":"show_text","contents": [{"text": "ペットを任意のモブに敵視させることができます。\\n\\nペットに視線を合わせて短スニークで対象ペットを選択します。視線上にペットがいない場合には、パーティー内のペットをすべて選択します。\\n\\nプレイヤーがチーム外のモブに視線を合わせた状態でアクションを行うと、選択中のペットが視線上のモブに敵視します。"}]}},{"text":"\\n      "},{"text":"【格納モード】","hoverEvent": {"action":"show_text","contents": [{"text": "ペットをアイテム化することができます。\\n\\nペットに視線を合わせて短スニークで対象ペットを選択します。視線上にペットがいない場合には、パーティー内のペットをすべて選択します。\\n\\nアクションで選択したペットをアイテム化します。"}]}},{"text":"\\n      "},{"text":"【騎乗モード】","hoverEvent": {"action":"show_text","contents": [{"text": "自身がペットに騎乗することや、ペットを他のペットに騎乗させることができます。\\n\\nはじめに騎乗時に上に乗るペットを選択します。ペットに視線を合わせて短スニークで対象ペットを選択します。視線上にペットがいない場合にはプレイヤーを選択します。\\n選択した状態でアクションを行うと、上に乗るペット／プレイヤーを決定します。\\n\\n次に下のペットを選択します。ペットに視線を合わせて短スニークで対象ペットを選択します。\\n選択した状態でアクションを行うと、下のペットを決定して騎乗を開始します。選択していない状態でアクションを行うと、上に乗るペットの選択に戻ります。\\n\\n既に騎乗しているペットを選択してアクションを行うと、ペットの騎乗を中止することができます。\\nプレイヤーはスニークで騎乗を中止します。"}]}},{"text":"\\n      "},{"text":"【強化モード】","hoverEvent": {"action":"show_text","contents": [{"text": "ペットを強化することができます。\\n\\nペットに視線を合わせて短スニークで対象ペットを選択します。\\n\\nアクションで選択したペットの強化メニューを開きます。\\n強化メニューでは、ペットが獲得したExp(経験値)を消費してペットのステータスを強化することができます。\\n強化メニューでは選択したペットはアイテム化します。アイテム化したペットを拾う、または一定以上離れることで強化メニューを閉じることができます。"}]}}]'

data modify storage mobtamer:database data.item.manual.pages append value '["",{"text":"テイマー商人\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　行商人の取引に、テイマー商人を呼ぶためのアイテムが追加されます。\\n"},{"text":"テイマー商人との取引ではコンダクターやデータパック設定、指南書などを入手することができます。\\n"},{"text":"進捗達成の報酬で取引は増え、ペットガチャやペット用装備が追加されるようになります。"}]'

data modify storage mobtamer:database data.item.manual.pages append value '["",{"text":"ペットの強化\\n","bold": true,"underlined": true},{"text":"\\n"},{"text":"　ペットはモブを倒した際にExp（経験値）を得ることがあります。そのExpを消費してペットを強化することができます。\\n"},{"text":"コンダクターの強化モードからペットを強化することができます。"}]'


# tellraw @a ["",{"text": "a","hoverEvent": {"action":"show_text","contents": [{"text": "test"}]}}]
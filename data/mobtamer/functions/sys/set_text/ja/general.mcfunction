
data modify storage mobtamer:text data.welcome.0 append value '{"text":"モブテイマーの世界へようこそ！"}'
data modify storage mobtamer:text data.welcome.1 append value '{"text":"この世界では、"}'
data modify storage mobtamer:text data.welcome.1 append value '{"text":"を使って一部のモブをテイムすることができます。"}'
data modify storage mobtamer:text data.welcome.2 append value '{"text":"テイムしたモブはあなたのペットとなり、連れて歩いたり、共に戦わせることができるようになります。"}'
#data modify storage mobtamer:text data.welcome.3 append value '{"text":"詳細はモブテイマーの指南書でご確認ください。"}'
data modify storage mobtamer:text data.welcome.3 append value '{"text":"わからないことがあれば、モブテイマーの指南書があなたを導いてくれるでしょう。"}'
data modify storage mobtamer:text data.welcome.4 append value '{"text":"モブテイマーの指南書を手に入れました。"}'

data modify storage mobtamer:text data.store.far_from_player append value '{"text":"ペット"}'
data modify storage mobtamer:text data.store.far_from_player append value '{"text":"はプレイヤーと離れ過ぎたため、アイテム化されました。"}'

function mobtamer:sys/set_text/ja/book
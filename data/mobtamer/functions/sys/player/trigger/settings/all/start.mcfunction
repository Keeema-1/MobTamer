execute if data storage mobtamer:settings data{all:0b} run tellraw @s ["",{"text": "  "},{"text": "全てリセット","color": "green","hoverEvent": {"action": "show_text","value": [{"text":"ログイン中のプレイヤー全員の進捗、テイム記録、解放された取引内容など、全てをリセットします（召喚中のペットは消滅します）"}]}},{"text": "","color": "yellow"},{"text": " ＜リセット＞ ","color": "red"},{"text": "[実行]","color": "light_purple","clickEvent": {"action":"run_command","value": "/trigger mt.trigger set 322"}}]
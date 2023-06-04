
data modify storage mobtamer:temp data.pages append value '[{"text":"はじめに"}]'
data modify storage mobtamer:temp data.page.title set value '{"text":"はじめに"}'
data modify storage mobtamer:temp data.page.text append value '{"text":"本データパックを有効にすると、一部のモブをテイムすることができます。"}'
data modify storage mobtamer:text data.manual.pages append from storage mobtamer:temp data.page
data modify storage mobtamer:temp data.page.title set value '{"text":"テイムチャレンジ"}'
data modify storage mobtamer:temp data.page.text append value '{"text":"テイム可能なモブに向かって金のリンゴを投げると、テイムチャレンジが始まります。"}'
data modify storage mobtamer:temp data.page.text append value '{"text":"テイム可能なモブに向かって金のリンゴを投げると、テイムチャレンジが始まります。"}'
data modify storage mobtamer:temp data.page.text append value '{"text":"テイムを成功させるには、チャレンジ中にそのモブを弱らせる必要があります。"}'
data modify storage mobtamer:temp data.page.detail append value '{"text":"金のリンゴは、"}'
data modify storage mobtamer:text data.manual.pages append from storage mobtamer:temp data.page

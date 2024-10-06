#!/usr/bin/env bash
DATE=`date +%m%d`
#todo="sometodo"'_'${DATE}
#todo1="[ ] Docker hostinger.com"
#todo2="[ ] Moshashugyo"
#todo3="[ ] math,khan(matrix)"
#todo4="[ ] Drawing(perse,anatomy)"
#todo2="[ ]googleCloudAPI"
#todo3="[ ]ネオン絵(逆光furにneon)" 
#todo4="[ ]確定申告"
#todo5="[ ]ホラー設定"
#todo6="[x] Reich"
todo0="[ ] flashcard"
todo1="[ ] 基本情報"
todo2="[ ] uemera (PHP)"
todo3="[ ] JS book chap10"
todo4="[ ] readinglist API"
todo5="[ ] Man\'s search "
todo6="[ ] cron"
todo7="[ ] wordpressHTML book"
echo $todo0','$todo1','$todo2','$todo3','$todo4','$todo5','$todo6','$todo7;
#ubuntu起動時の挙動
#sedでgdriveのtodos_dailyに毎日のtodosを記録
#一日の初めに前日のtodosをPromptでubuntuの起動時にscriptを走らせる.
#今のtodosを表示
#todosに変更があればtodo番号を指定し、READで入れ替え。

#コマンド起動時の挙動
#promptで終わったタスクを聞き、番号を聞き、doneとしてsedでtodos_done.mdに記録。



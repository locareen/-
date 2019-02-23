#!/bin/bash

path=~/index.txt
#保存先を指定

while :
do
	if [ "$SKIP" = "ON" ]; then
 	  SKIP="ON"
	fi

	if [ "$SKIP" = "" ]; then
	  SKIP="OFF"
	  echo "日付を入力"
	  read date
	fi
#日付入力は一度入力したら"n"を入力するまでスキップ
	SKIP="ON"

	echo "教科を入力"
	echo "終了にはqを入力"
	echo "日付変更にはnを入力"
	read sub
	if [ "$sub" = "q" ]; then
	  break
	elif [ "$sub" = "n" ]; then
	  SKIP=""
	  continue 5
	else

	  echo "単元を入力"
	  read unit

	  echo "その他備考など"
	  read about

          echo "$date,$sub,$unit,#$about" >> "$path"
#日付,教科,単元,#備考の形で出力
	fi
done


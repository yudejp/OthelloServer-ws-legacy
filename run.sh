#!/bin/bash

function last () {
  status=$?
  echo "終了を検出しました。($status)"
  echo  in trap, status captured
  killall chisel
  stty sane
  exit $status
}

trap 'last' {1,2,3,15}

if [ $# = 2 ]; then
    echo "サーバー側では、引数は使用されません。"
fi

if [ -e "chisel" ]; then
    ./chisel server --port 45451
  else
    echo "chisel が見つかりません。"
    echo "同じディレクトリに chisel の実行ファイルを \"chisel\" として保存してください。"
fi

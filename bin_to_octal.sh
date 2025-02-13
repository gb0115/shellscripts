#!/usr/bin/env bash
function bin_to_octal(){
  #2to10
  local binary=$BASE2
  #10to8
  printf '%o\n' $((2#$binary))
}

# 単体で呼び出された時のみ以下を実行
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  echo "input base-2"
  read BASE2
  # [[]]は条件式、=~正規表現を満たしたらtrue
  if [[ $BASE2 =~ ^[01]+$ ]]; then
    # 有効な2進数の場合の処理
    bin_to_octal "$BASE2"
  else
    # 無効な入力に対するエラーメッセージ
    echo "Invalid binary number. Please enter a valid base-2 number."
  fi
fi



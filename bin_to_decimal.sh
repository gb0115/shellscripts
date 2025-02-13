#!/usr/bin/env bash
# 2to10
# 別のスクリプトから参照された時
function bin_to_decimal(){
  local binary=$1
  #関数外ではなく内で出力することにより、他のプログラムのパーツとして参照できる
  printf '%d\n' $((2#$binary))
}

# 単体で呼び出された時のみ以下を実行
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  echo "input base-2"
  read BASE2
  # [[]]は条件式、=~正規表現を満たしたらtrue
  if [[ $BASE2 =~ ^[01]+$ ]]; then
    # 有効な2進数の場合の処理
    bin_to_decimal "$BASE2"
  else
    # 無効な入力に対するエラーメッセージ
    echo "Invalid binary number. Please enter a valid base-2 number."
  fi
fi


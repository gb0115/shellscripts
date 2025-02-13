#!/usr/bin/env bash
source ./bin_to_decimal.sh 
echo "input base-2"
read BASE2

#function bin_to_decimal(){
#  #2to10
#  local binary=$BASE2
#  local decimal=$((2#$binary))
#  printf $decimal
#}

function bin_to_oct(){
  #2to10
  local binary=$BASE2
  local decimal=$(bin_to_decimal "$binary")
  #10to8
  #関数外ではなく内で出力することにより、他のプログラムのパーツとして参照できる
  printf '%o\n' $decimal
}
#readの分はここで参照
bin_to_oct "BASE2"

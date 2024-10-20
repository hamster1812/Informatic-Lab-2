#!/bin/bash

change ()
{
  n=$1
  result=""
  i=0
  while [[ i -lt 8 ]]
  do
    ((i++))
    result="$((n % 2))$result"
    n=$((n / 2))
  done
  echo $result
}


a=()
IFS='.'
#read a[0] a[1] a[2] a[3]
read a[0] a[1] a[2] a[3] <<< "$1"

for ((i=0; i<4; i++))
do
  a[i]="$(change "${a[i]}")"
done
echo "${a[*]}"
#!/usr/bin/env bash
# 练习 e10：用 awk 交换两列

D=$(cd "$(dirname "$0")" && pwd)
cd "$D"

echo "== 原始 data.txt =="
cat data.txt

echo
echo "== awk 交换两列（\$2 \$1） =="
awk '{print $2, $1}' data.txt

echo
echo "== 交换两列并插入分隔符 =="
awk '{print $2 " <- " $1}' data.txt

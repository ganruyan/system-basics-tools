#!/usr/bin/env bash
# 练习 e11：find + xargs 统计 .sh 文件行数

D=$(cd "$(dirname "$0")" && pwd)
cd "$D"

echo "== src/ 目录里的所有文件 =="
find src -type f

echo
echo "== 用 find + xargs 统计所有 .sh 文件行数 =="
find src -name '*.sh' | xargs wc -l

#!/usr/bin/env bash
# 练习 e09：备份文件，文件名带当天日期

D=$(cd "$(dirname "$0")" && pwd)
cd "$D"
chmod +x backup.sh

echo "== 1. 查看备份脚本 =="
cat backup.sh

echo
echo "== 2. 准备一个待备份文件 =="
echo "重要数据" > data.txt
ls -l data.txt

echo
echo "== 3. 运行备份脚本 =="
./backup.sh data.txt

echo
echo "== 4. 查看结果（多出带日期的 .bak） =="
ls -l data.txt*

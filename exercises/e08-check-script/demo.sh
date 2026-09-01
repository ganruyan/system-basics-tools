#!/usr/bin/env bash
# 练习 e08：编写 check.sh，chmod +x 后运行

D=$(cd "$(dirname "$0")" && pwd)
cd "$D"

echo "== 1. 查看脚本内容 =="
cat check.sh

echo
echo "== 2. chmod +x 赋予执行权限 =="
chmod +x check.sh
ls -l check.sh

echo
echo "== 3. 运行：检查存在的文件 =="
./check.sh check.sh

echo
echo "== 4. 运行：检查不存在的文件 =="
./check.sh 不存在的文件.txt

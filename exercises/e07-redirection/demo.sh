#!/usr/bin/env bash
# 练习 e07：stdout / stderr 重定向

D=$(cd "$(dirname "$0")" && pwd)
cd "$D"

echo "== 1. stdout 重定向到文件 =="
echo "正常输出" > stdout.txt
echo "stdout.txt 内容："
cat stdout.txt

echo
echo "== 2. stderr 单独重定向（命令故意报错） =="
ls 不存在的文件 2> stderr.txt
echo "stderr.txt 内容："
cat stderr.txt

echo
echo "== 3. stdout 与 stderr 合并 2>&1 =="
touch 存在的文件.txt
ls 存在的文件.txt 不存在的.txt > all.txt 2>&1
echo "all.txt 内容（stdout 的正确信息 + stderr 的错误信息都在里面）："
cat all.txt

echo
echo "== 4. 追加 >> 而不是覆盖 =="
echo "追加的一行" >> stdout.txt
cat stdout.txt

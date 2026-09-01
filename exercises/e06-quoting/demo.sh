#!/usr/bin/env bash
# 练习 e06：单引号 / 双引号 / ANSI-C 引号的区别

name=world

echo "== 单引号：不展开变量（原样输出） =="
echo 'hello $name'

echo
echo "== 双引号：展开变量 =="
echo "hello $name"

echo
echo "== ANSI-C 引号 \$'...'：解析转义字符 =="
echo $'第一行\n第二行\ttab 制表'

echo
echo "== 命令替换 \$(...) 对照 =="
echo "今天是 $(date +%Y-%m-%d)"

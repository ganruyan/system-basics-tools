#!/usr/bin/env bash
# 练习 e09：备份文件，文件名追加当天日期
cp "$1" "$1.$(date +%Y-%m-%d).bak"
echo "已备份：$1 -> $1.$(date +%Y-%m-%d).bak"

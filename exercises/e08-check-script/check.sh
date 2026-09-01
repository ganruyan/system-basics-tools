#!/usr/bin/env bash
# 练习 e08：判断文件是否存在
if [ -f "$1" ]; then
    echo "$1 存在"
else
    echo "$1 不存在"
fi

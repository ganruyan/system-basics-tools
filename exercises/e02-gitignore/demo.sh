#!/usr/bin/env bash
# 练习 e02：创建全局 gitignore，忽略 .DS_Store（macOS 文件）

echo "== 1. 创建全局 gitignore，忽略 .DS_Store =="
echo ".DS_Store" > ~/.gitignore_global
echo "已创建 ~/.gitignore_global，内容如下："
cat ~/.gitignore_global

echo
echo "== 2. 让 git 全局使用该文件 =="
git config --global core.excludesfile ~/.gitignore_global
echo "已设置 core.excludesfile"

echo
echo "== 3. 验证 =="
git config --global --get core.excludesfile

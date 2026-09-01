#!/usr/bin/env bash
# 练习 e01：配置 git 别名 `git graph`，图形化查看提交历史

echo "== 1. 配置别名 git graph =="
git config --global alias.graph "log --all --graph --decorate --oneline"
echo "已写入 ~/.gitconfig"

echo
echo "== 2. 确认别名生效 =="
git config --global --get alias.graph

echo
echo "== 3. 运行 git graph 查看本仓库提交历史 =="
cd ~/System-tool-basics
git graph

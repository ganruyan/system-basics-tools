#!/usr/bin/env bash
# 练习 e03：git stash 暂存流程（stash → log → stash pop）
# 用独立的临时仓库演示，避免污染主仓库

D=$(mktemp -d)
cd "$D"

git init -q
git config user.name "gry"
git config user.email "179649847@qq.com"
echo "hello" > file.txt
git add file.txt
git commit -q -m "初始提交"

echo "== 1. 修改 file.txt 并查看状态 =="
echo "临时改动" >> file.txt
git status --short

echo
echo "== 2. git stash 暂存改动 =="
git stash
echo "工作区已恢复干净（无输出即无改动）："
git status --short
echo "stash 列表："
git stash list

echo
echo "== 3. git log --all --oneline 查看提交 =="
git log --all --oneline

echo
echo "== 4. git stash pop 恢复改动 =="
git stash pop
echo "恢复后 file.txt 内容："
cat file.txt

rm -rf "$D"

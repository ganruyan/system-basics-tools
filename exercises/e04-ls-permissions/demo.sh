#!/usr/bin/env bash
# 练习 e04：ls -l 的 10 个权限字符

D=$(cd "$(dirname "$0")" && pwd)
cd "$D"

echo "== 1. 创建几种不同权限的文件 =="
touch normal.txt                 # 默认权限（受 umask 影响）
echo 'echo hi' > script.sh
chmod 755 script.sh              # rwxr-xr-x
echo 'secret' > secret.txt
chmod 600 secret.txt             # rw-------

echo
echo "== 2. ls -l 查看权限 =="
ls -l

echo
echo "== 3. 用 stat 只看权限位 =="
stat -c "%A  %n" normal.txt script.sh secret.txt

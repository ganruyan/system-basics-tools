#!/usr/bin/env bash
# 练习 e05：glob 通配符

D=$(cd "$(dirname "$0")" && pwd)
cd "$D"
rm -rf files && mkdir files && cd files

touch a.txt b.txt c.txt file1.txt file2.txt file10.txt readme.md data.csv

echo "当前目录所有文件："
ls
echo
echo "== *.txt（所有 .txt 结尾） =="
ls *.txt
echo
echo "== ?.txt（单个字符文件名） =="
ls ?.txt
echo
echo "== [ab].txt（a 或 b 开头） =="
ls [ab].txt
echo
echo "== file?.txt（file 后恰好一个字符） =="
ls file?.txt
echo
echo "== 多模式 *.txt *.csv =="
ls *.txt *.csv

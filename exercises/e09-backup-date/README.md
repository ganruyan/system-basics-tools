# e09 · 备份文件带日期

写一个 `backup.sh`，用 `$(date +%Y-%m-%d)` 把当天日期追加到备份文件名里。

- 运行：`bash demo.sh`
- 关键命令：`cp "$1" "$1.$(date +%Y-%m-%d).bak"`

# e10 · awk 交换两列

用 `awk` 把文本文件的两列对调，并演示自定义输出分隔符。

- 运行：`bash demo.sh`
- 关键命令：`awk '{print $2, $1}' data.txt`

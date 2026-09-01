# e06 · 引号的区别

对比单引号（不展开变量）、双引号（展开变量）、ANSI-C 引号 `$'...'`（解析转义），
以及 `$(...)` 命令替换。

- 运行：`bash demo.sh`
- 关键命令：`echo 'hello $name'` / `echo "hello $name"` / `echo $'a\nb'`

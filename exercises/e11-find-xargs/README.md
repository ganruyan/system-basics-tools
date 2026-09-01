# e11 · find + xargs 统计行数

用 `find` 找出 `.sh` 文件，管道给 `xargs`，再交给 `wc -l` 统计行数。

- 运行：`bash demo.sh`
- 关键命令：`find src -name '*.sh' | xargs wc -l`

#!/bin/bash
csv="$1"
if [ $# -lt 1 ] || [ ! -f "$csv" ]; then
    echo "错误：文件不存在或未提供文件参数：${csv:-<无>}" >&2
    exit 1
fi

awk -F, 'NR>1 && $4 ~ /^5/ {c[$3]++}
         END { for (p in c) print c[p], p }' "$csv" |
    sort -k1,1nr -k2,2 |
    head -2 |
    awk '{print $2, $1}'

avg=$(awk -F, 'NR>1 {s+=$5; n++}
               END { printf "%.2f", (n ? s/n : 0) }' "$csv")
echo "avg_latency_ms=${avg}"
exit 0

#!/bin/bash
# Проверка порта 80
timeout 2 bash -c "echo > /dev/tcp/localhost/80" 2>/dev/null || exit 1
# Проверка index.html
[ -f /usr/share/nginx/html/index.html ] || exit 1
exit 0

#!/bin/bash

# 在后台运行无限循环
while true; do
  echo "Pod is running"
  sleep 5
done &

# 这个命令会阻塞容器，防止容器退出
tail -f /dev/null &

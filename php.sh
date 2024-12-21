#!/bin/bash

# 定义下载 URL 和文件名
URL="https://www.php.net/distributions/php-8.4.2.tar.gz"
FILE="php-8.4.2.tar.gz"

while true; do
  # 下载文件
  wget "$URL" -O "$FILE"

  # 检查下载是否成功
  if [ $? -ne 0 ]; then
    echo "deploy failed, quitting"
  fi

  # 删除下载的文件
  rm -f "$FILE"

  # 等待 2 分钟
  sleep 120
done

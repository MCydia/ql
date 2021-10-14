#!/usr/bin/env bash

## 添加你需要重启自动执行的任意命令，比如 ql repo
## 安装node依赖使用 pnpm install -g xxx xxx
## 安装python依赖使用 pip3 install xxx

ql repo https://github.com/feverrun/my_scripts.git "jd_|jx_|gua|jddj|getCookie|getJDCookie" "backUp" "^(jd|JD|JS)[^_]|USER|sendNotify|utils"
wget -q -P /ql/scripts https://ghproxy.com/https://raw.githubusercontent.com/shufflewzc/faker2/main/sendNotify.js -O /ql/scripts/sendNotify.js
wget -q -P /ql/scripts https://ghproxy.com/https://raw.githubusercontent.com/shufflewzc/faker2/main/sendNotify.py -O /ql/scripts/sendNotify.py

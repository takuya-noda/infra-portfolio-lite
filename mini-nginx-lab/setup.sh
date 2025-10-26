#!/bin/bash
# Nginx 構成セットアップ（Ubuntu）
set -e

echo "== apt update =="
sudo apt update -y

echo "== install nginx =="
sudo apt install -y nginx

echo "== enable & start =="
sudo systemctl enable nginx
sudo systemctl start nginx

echo "== ufw allow =="
# ufwが無効ならエラーにしないために || true を付与
sudo ufw allow 'Nginx Full' || true
sudo ufw reload || true

echo "== check HTTP status =="
curl -I http://localhost | head -n 1   # ← ここが 'HTTP/1.1 200 OK' なら成功

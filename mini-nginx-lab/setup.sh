<<<<<<< HEAD
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
=======
#!/usr/bin/env bash
# ===============================
# Nginx構成セットアップスクリプト
# 実行環境：Parallels上のUbuntu Server
# ===============================

set -e  # エラー時は停止

echo "== パッケージ更新 =="
sudo apt update -y

echo "== Nginxインストール =="
sudo apt install -y nginx

echo "== 自動起動設定 =="
sudo systemctl enable nginx
sudo systemctl start nginx

echo "== UFW設定 =="
sudo ufw allow 'Nginx Full' || true
sudo ufw reload || true

echo "== 動作確認 =="
curl -I http://localhost | head -n 1

echo "完了：Nginxが起動しているか確認。"
>>>>>>> e7ca87c (2025/11/03 AWSポートフォリオ（mini-aws-lab）追加)

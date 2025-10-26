# mini-nginx-lab

Nginxの最小構成を理解するための練習環境です。  
手動構築を通して、Webサーバの基本的な動作と設定を確認します。

## 環境
- macOS（ターミナル操作）
- Parallels Desktop 上の Ubuntu Server
- Nginx 最新安定版

## 目的
- Nginxの基本構造（ディレクトリ・設定ファイル）を理解する  
- サービス起動・再起動の流れを把握する  
- index.htmlを用いた動作確認

## ファイル構成
- `setup.sh`：構築コマンドをまとめたスクリプト
- `checks.md`：動作確認・トラブルメモ
- `README.md`：全体の記録と目的をまとめたドキュメント

### 確認内容（2025-10-27 時点）
- `nginx -v` → nginx/1.24.0
- `systemctl status nginx` → Active(running)
- `curl -I http://localhost` → HTTP/1.1 200 OK
- ブラウザアクセスでも index.html が表示されることを確認

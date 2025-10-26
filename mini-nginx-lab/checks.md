# mini-nginx-lab 実行確認ログ

## 検証環境
- OS: Ubuntu 24.04 (Parallels Desktop 上)
- 実行ユーザー: takuya
- 実行場所: ~/infra-portfolio-lite/mini-nginx-lab

## 実行内容
- setup.sh を実行して Nginx を自動構築
- コマンド:
  ```bash
  chmod +x setup.sh
  sudo ./setup.sh

## 2025-10-27
- setup.sh 実行後、nginx 設定チェックを実施。
- 結果: syntax is ok / test is successful
- systemctl status: active (running)
- curl にて HTTP/1.1 200 OK を確認。
- Nginx構築済み環境の再現確認を実施。
- 以下の確認を行い、稼働状態を確認した。
  - `nginx -v` → nginx/1.24.0
  - `systemctl status nginx` → Active(running)
  - `curl -I http://localhost` → HTTP/1.1 200 OK
- Macのブラウザからも Ubuntu上のNginxにアクセスし、index.htmlが正しく表示されることを確認。
- 現在は Parallels 上の Ubuntu で動作を検証。

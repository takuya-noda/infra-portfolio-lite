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
- 次回: HTMLを追加しブラウザで表示確認を行う予定。


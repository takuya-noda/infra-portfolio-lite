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

## 今後の展望
- systemctlによる起動設定確認  
- ufw（ファイアウォール）設定との併用テスト  
- AWS EC2環境での再現も検討


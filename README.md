# infra-portfolio-lite

インフラ構築の練習を少しずつまとめていくためのポートフォリオです。  
大きな構成ではなく、手動で動かしながら理解したことを記録しています。

- 操作環境：macOS のターミナル
- 検証用 Linux：
  - Parallels Desktop 上の Ubuntu Server（ローカル構成）
  - AWS EC2 上の Amazon Linux 2023（クラウド構成）
- 目的：設定手順や構成管理の考え方を身につけること

AI ツールは補助として利用していますが、構成の方針・実行・検証は自分で行っています。

---

## プロジェクト一覧

### 1. [mini-nginx-lab（ローカル構成）](./mini-nginx-lab/README.md)

Nginx の最小構成を Ubuntu（Parallels 上）で構築し、HTTP 200 応答とブラウザ表示まで確認した検証環境です。

- 概要  
  - ローカルの仮想マシン上で Nginx をインストール  
  - systemd でサービス起動・自動起動を設定  
  - `curl` とブラウザの両方で動作確認を実施

- 構成ファイル  
  - 構築スクリプト：[setup.sh](./mini-nginx-lab/setup.sh)  
  - 検証メモ：[checks.md](./mini-nginx-lab/checks.md)

- スクリーンショット（`mini-nginx-lab/images/` 配下）  
  - 起動確認：`images/nginx-status.png`  
  - ブラウザ表示：`images/browser-view.png`

- 詳細ドキュメント：[mini-nginx-lab/README.md](./mini-nginx-lab/README.md)

---

### 2. [mini-aws-lab（クラウド構成）](./mini-aws-lab/README.md)

AWS EC2（Amazon Linux 2023）上に Nginx を構築し、インターネット経由で HTTP 200 応答とブラウザ表示まで確認した検証環境です。

- 概要  
  - AWS マネジメントコンソールから EC2 インスタンスを作成  
  - 秘密鍵（.pem）を使って SSH 接続  
  - `dnf` で Nginx をインストールし、systemd で起動・自動起動設定  
  - パブリック IP にブラウザアクセスして表示を確認

- 構成ファイル  
  - 手順ドキュメント：[setup.md](./mini-aws-lab/setup.md)

- スクリーンショット（`mini-aws-lab/images/` 配下）  
  - SSH 接続：`images/aws-ssh-login.png`  
  - Nginx インストール開始：`images/aws-nginx-install-start.png`  
  - Nginx インストール完了：`images/aws-nginx-install-complete.png`  
  - ステータス確認：`images/aws-nginx-status.png`  
  - ブラウザ表示：`images/aws-browser-view.png`

- 詳細ドキュメント：[mini-aws-lab/README.md](./mini-aws-lab/README.md)

---

## このリポジトリについて

- 目的  
  - 手動構築で基礎を固め、設定の意味を理解すること  
  - ローカル環境とクラウド環境の違いを体験的に理解すること  

- 環境  
  - macOS（操作端末）  
  - Parallels Desktop 上の Ubuntu Server（ローカル検証）  
  - AWS アカウント上の EC2（クラウド検証）

- 今後の予定  
  - 検証項目（監視・ログ・セキュリティグループなど）の追加  
  - 構成管理ツール（Ansible など）による自動化への展開  
  - 学習状況に合わせて、新しいラボ（データベース、ロードバランサなど）を追加

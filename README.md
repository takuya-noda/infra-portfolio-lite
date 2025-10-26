# infra-portfolio-lite

インフラ構築の練習を少しずつまとめていくためのポートフォリオです。  
大きな構成ではなく、手動で動かしながら理解したことを記録します。

使用環境は **Macのターミナル** から操作する  
**Parallels Desktop 上の Ubuntu Server（ローカル構築）** です。  
仮想環境での検証を通して、設定手順や構成管理の理解を深めています。

AIツールは補助として利用していますが、内容の設計・実行・検証は自分で行っています。

---

## 📂 プロジェクト一覧

### 1. [mini-nginx-lab](./mini-nginx-lab/)
Nginx の最小構成を Ubuntu（Parallels 上）で構築し、HTTP 200 応答とブラウザ表示まで確認した検証環境。

- 構成スクリプト：[`setup.sh`](./mini-nginx-lab/setup.sh)
- 確認メモ：[`checks.md`](./mini-nginx-lab/checks.md)
- スクリーンショット：[`images/`](./mini-nginx-lab/images/)
  - 起動確認：`images/nginx-status.png`
  - ブラウザ表示：`images/browser-view.png`

---

## 📝 このリポジトリについて
- 目的：手動構築で基礎を固め、設定の意味を理解する  
- 環境：macOS（操作端末） / Parallels Desktop 上の Ubuntu Server（検証）  
- 今後：検証項目の追加、構成管理ツール（Ansible など）での自動化にも発展予定

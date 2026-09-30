#!/usr/bin/env bash
# エラーが発生したらスクリプトを終了する
set -o pipefail
set -o errexit

# パッケージのインストール
pip install -r requirements.txt

# 静的ファイル（CSSやデザイン）の集約
python manage.py collectstatic --no-input

# データベースの更新（PostgreSQLへの反映）
python manage.py migrate

## Installation

- mysql学習用総合環境
- schemaspyのM1対応
- [画面（コンテナ起動後）](http://localhost:4000/)

### インストール

```
git clone https://github.com/kazutotakeuchi-32/schemaspy_docker.git
```

## Usage 

### コンテナ構築

```
# build
docker-compose build 

＃ データベースでテーブルを作成後でないとschemaspyとエラー
docker-compose up
```

### mysql接続

```
# DBコンテナ接続
docker-compose exec db /bin/bash

# db接続
mysql -u root -h db -p

# 直接
docker-compose exec db mysql -u root -p
```

### schemaspy

```
# ホスト名を設定
#mysqlコンテナ内
schemaspy.host=db
#ローカル内
schemaspy.host=host.docker.internal

# ポート番号を設定
schemaspy.port=3306

# データベース名を設定
schemaspy.db=<データベース名>

# ユーザ名
schemaspy.u=<ユーザ名>

# パスワードを設定
schemaspy.p=<パスワードを設定>

# スキーマ
schemaspy.s=<スキーマ>

```

## Note

[schemaspyドキュメント](https://schemaspy.readthedocs.io/en/latest/)


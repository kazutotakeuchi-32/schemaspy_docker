## Installation


### インストール

```
git clone https://github.com/kazutotakeuchi-32/schemaspy_docker.git
```

## Usage 

### コンテナ構築

```
#build
docker-compose build 

＃データベースでテーブルを作成後でないとschemaspyコンテナでエラー
docker-compose up
```

### mysql接続

```
DBコンテナ接続

docker-compose exec db /bin/bash

db接続

mysql -u root -h db -p

```

### schemaspy

```
# ホスト名を設定
#mysqlコンテナ内
schemaspy.host=db
#ローカルDB
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


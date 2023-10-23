# Rails 初期設定
## データベース
- MySQL8.1
- Dockerでlocal-dbとtest-dbをそれぞれ作成している
- local-dbとtest-dbはそれぞれ/db/<env>でDockerfileを定義
- local、testともにコンテナ起動時にデータベースを作成するようinit_db.shで設定

## アセットパイプライン
### javascript
import-mapを使用。
### css
sprocketsを使用。scssは使用しない(バニラcssでネストができるようになったので)
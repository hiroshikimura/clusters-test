# clusters-test

## TODO
- [ ] postgresqlのmaster/replicaの切り替え機能
  - オリジナルのconfigは全て確保しておく
  - 指定時にmaster or replicaでコピーする
  - 特に指定がない場合はそのまま起動する
- [ ] kafka用のdocker-composeを作成
  - confluent kafkaで良いかどうか？も考える
- [ ] redis用のdocker-composeを作成
  - redis clusterはいるのか？を考える
- [ ] minio用のdocker-composeを作成
  - 直接こっちをみてもらえるような設定にしたい
- [ ] nginx用のdocker-composeを作成
  - 振り分けに利用する
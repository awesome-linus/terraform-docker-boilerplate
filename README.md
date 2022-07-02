## terraform-docker-boilerplate
macOS Montereyかつ、Terraformバージョン0.11.8だと、ローカル上で動作できなかったためDocker Composeで実行する。

```sh
# Docker起動
docker-compose up -d
docker-compose exec terraform sh 

# 認証でAWSコマンドを打つ場合など、bashで実行する
/app/my-terraform # bash
```

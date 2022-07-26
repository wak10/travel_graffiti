# もくもくアプリ

## **Travel graffiti(旅の落書き)**

## 概要:

### 訪れた場所にメッセージを残せるアプリ

旅館やホテルに泊まった人が、旅の思い出や関係ないイラストなどを自由に書いている”あのノート”をアプリ化

## 制作物:

- [WBS](https://docs.google.com/spreadsheets/d/1jIpgrHZ6vVIvQOlEWZYl4qEZCbcupJFfUNEMW_0L2_I/edit?usp=sharing)(2022/06/26更新)
- [ER図](https://drive.google.com/file/d/1qJm-xhfkGITwbGXwFSbs6C4snJBxO-sO/view?usp=sharing)(2022/06/26更新)
- ワイヤーフレーム
- github

## 機能:

必須機能

- user登録(devise)
- マップの訪れた場所にメッセージCRUD(できれば手書き&text型)
- 投稿を閲覧(場所ごとに他人の)
- 投稿を閲覧(自分が上げた全部の)

あったらいい機能

- 投稿に対してのいいね･コメント機能
- 現在地取得し近くのスポットにのみ投稿閲覧ができる(1km~2kmぐらい?)

## gemなど:

- devise
- Carrierwave
- MiniMagick
- HTML5 の canvas(手書き機能)
- ridgepole
- gmaps4rails
- geocoder

## 参考など:

主参考

- ****[Railsで手書きの図や絵をプログラムに取り込む方法](http://hamasyou.com/blog/2013/12/03/rails/)****
- ****[RailsアプリにGoogle Mapから緯度経度情報を取得する機能を追加する](https://bagelee.com/programming/rails-google-map/)****

補助参考

- ****[Rails アプリにGoogleMap APIを導入する](https://zenn.dev/takuyanagai0213/articles/e2467175bdd5fc)****
- ****[【rails】google maps api　地図情報含んだ投稿をして表示させる方法](https://qiita.com/sho-17/items/0854d59d52d9c3679370)****
- ****[Railsで地図 投稿 地名検索 一覧表示 GoogleMapsAPI(JavaScript) gemなし](https://qiita.com/kakeru0520sou1/items/9a39b3a122a8be5b9b65)****
- [しょうさんのGPSアプリ](https://codepen.io/syohei-yamaki/pen/KKqvLvv)

環境構築参考

- ****[Rails 7 + MySQLの環境構築をDocker composeで作る](https://qiita.com/croquette0212/items/7b99d9339fd773ddf20b)****
- ****[RailsアプリをDockerで開発するための手順](https://qiita.com/togana/items/30b22fc39fe6f7a188ec)****
- ****[[Docker] M1 Macで「 no matching manifest for linux/arm64/v8 in the manifest list entries」のエラーの対処法](https://qiita.com/jizya/items/38f15271903de629d1ab)****
- ****[Makefileで楽してdockerコマンドを使おう！](https://beyondjapan.com/blog/2020/10/makefile-docker/)****
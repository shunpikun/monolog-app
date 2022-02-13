# アプリケーション名
  「Monolog」

# アプリケーション概要
  家の物を登録して忘れないように管理するアプリケーションです。ユーザーを登録すると家の物を登録できるようになります。自身が登録した家の物は編集と削除をすることができます。

# 本番環境
   https://monolog-app-36852.herokuapp.com/

　テスト用アカウント  
 - ID/Pass  
     ID：admin  
     Pass：1192  
 - テスト用アカウント  
     メールアドレス：test@example  
     パスワード：test9876  

# 利用方法
  WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。  
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。  
接続先およびログイン情報については、上記の通りです。  
同時に複数の方がログインしている場合に、ログインできない可能性があります。  
テストアカウントでログイン→トップページから物を登録するをクリック→物情報入力→物情報登録確認後、トップページに登録した物が表示されます。

# 目指した課題解決
  家に置いてある物がどこに保管されているか忘れないようにするという、ユーザーのニーズを満たすことを目指しました。

# DEMO
  
  ## トップページ
  [![Image from Gyazo](https://i.gyazo.com/ef26520f8c14e163d3422eae4b7b4292.png)](https://gyazo.com/ef26520f8c14e163d3422eae4b7b4292)
  [![Image from Gyazo](https://i.gyazo.com/4ab6cc4c4890a3eff34f8840cdb8b02c.png)](https://gyazo.com/4ab6cc4c4890a3eff34f8840cdb8b02c)

  ## 登録した物がある場合
  [![Image from Gyazo](https://i.gyazo.com/3d198dad57a756ba3bd06d1fd557750f.png)](https://gyazo.com/3d198dad57a756ba3bd06d1fd557750f)
  [![Image from Gyazo](https://i.gyazo.com/2020b96b130f1776537a84b119b41f84.png)](https://gyazo.com/2020b96b130f1776537a84b119b41f84)

  ## 新規登録画面
  [![Image from Gyazo](https://i.gyazo.com/26a131d24e29aa431d2fa76746fbe93a.png)](https://gyazo.com/26a131d24e29aa431d2fa76746fbe93a)

  ## ログイン画面
  [![Image from Gyazo](https://i.gyazo.com/586dd7258f58da55f958f3806c8a66b1.png)](https://gyazo.com/586dd7258f58da55f958f3806c8a66b1)

  ## ユーザー編集画面
  [![Image from Gyazo](https://i.gyazo.com/716eb147a9305808ff7c499042767bec.png)](https://gyazo.com/716eb147a9305808ff7c499042767bec)

  ## 物登録画面
  [![Image from Gyazo](https://i.gyazo.com/22e53342adc81f183b19abe2b22f2dde.png)](https://gyazo.com/22e53342adc81f183b19abe2b22f2dde)
  [![Image from Gyazo](https://i.gyazo.com/3943343a017b4cd8a91b5ab6293009c7.png)](https://gyazo.com/3943343a017b4cd8a91b5ab6293009c7)

  ## 物詳細画面
  [![Image from Gyazo](https://i.gyazo.com/992ed6d7d36a95274306c7a7ea77101d.png)](https://gyazo.com/992ed6d7d36a95274306c7a7ea77101d)
  [![Image from Gyazo](https://i.gyazo.com/7dfd58b337e43358bdfed98e80d76e9b.png)](https://gyazo.com/7dfd58b337e43358bdfed98e80d76e9b)

  ## 物編集画面
  [![Image from Gyazo](https://i.gyazo.com/3d6b3786e671e22bb06e76c1489fe630.png)](https://gyazo.com/3d6b3786e671e22bb06e76c1489fe630)
  [![Image from Gyazo](https://i.gyazo.com/61af3cb0ba897ce35d0f1d4694226412.png)](https://gyazo.com/61af3cb0ba897ce35d0f1d4694226412)

  ## 検索画面
  [![Image from Gyazo](https://i.gyazo.com/c94661463ecf78b7f391148ce123950a.jpg)](https://gyazo.com/c94661463ecf78b7f391148ce123950a)

# 工夫したポイント
  トップページの物一覧表示を、ユーザーが登録した物のみ表示させるようにして、ユーザーがログインしていないかつログインしているユーザーが物を登録していない場合にダミー画像を表示させるように実装した点になります。

# 使用技術(開発環境)
  ## バックエンド
    Ruby, Ruby on Rails

  ## フロントエンド
    HTML, CSS, JavaScript, JQuery, Ajax

  ## データベース
    MySQL, SequelPro

  ## Webサーバー(本番環境)
    Herock

  ## ソース管理
    GitHub, GitHubDesktop

  ## テスト
    Rspec

  ## エディタ
    VSCode

# 課題や今後実装したい機能
  課題としては、検索画面の見た目を整えたいて、見やすい画面に実装できるようにすることです。  
  ### 今後実装したい機能  
  - 複数枚画像投稿機能
  - エラーメッセージの日本語化


# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

## Association

- has_many :properties


## properties テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| name            | string     | null: false                    |
| info            | text       | null: false                    |
| frequency_id    | integer    | null: false                    |
| storage         | string     | null: false                    |
| user            | references | null: false, foreign_key: true |

## Association

- belongs_to :user
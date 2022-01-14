# README

## usersテーブル

| Column             | Type       | Options                        |
| -------------------| ---------- | ------------------------------ |
| name               | string     | null: false                    |
| email              | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |
| birthday_year      | date       | null: false                    |
| gender_id          | integer    | null: false                    |

### Association
has_one :profile
has_many :favorites

## profilesテーブル

| Column             | Type       | Options                        |
| -------------------| ---------- | ------------------------------ |
| name               | string     | null: false                    |
| position_id        | integer    | null: false                    |
| consept            | text       | null: false                    |
| depertment_id      | integer    | null: false                    |
| division_id        | integer    | null: false                    |
| license_id         | integer    | null: false                    |
| strength           | text       |                                |
| weakness           | text       |                                |
| user               | references | null: false, foreign_key: true |

### Association

belongs_to :user
has_many :favorites


## comments
| Column             | Type       | Options                        |
| -------------------| ---------- | ------------------------------ |
| text               | text       |                                |
| user               | references | null: false, foreign_key: true |
| profile            | references | null: false, foreign_key: true |

### Association

belongs_to: user
belongs_to: profile

| 記述すること    | 備考                                                               |
| ------------- | ----------------------------------------------------------------- |
|アプリケーション名| yaru-ja-nai-37240                                                 |
|URL            | https://yaru-ja-nai-37240.herokuapp.com/                          |
|テスト用アカウント| email: citrus@icloud.com / password: 123456a                      |
|利用方法1       | 1,新規登録ページから新規登録を行う                                      |
|利用方法2       | 2,プロフィール作成ページから名前、経験年数、部署経験数、長所、短所を入力・投稿 |
|利用方法3       | 3,他ユーザーのプロフィール閲覧できる / 検索ページからプロフィールを検索できる。|
|利用方法4       | 4,気になったユーザーにコメントを残すことができる                          |
|作成背景        | 看護師として、どういった経歴を持った人物なのかを自分自身で客観視したいと考えた  |
|作成背景2       | 転職において、自分が人事であれば、求める人間像が詳細に把握できればと思えたから  |
|作成背景3       | 自身のことを言語化することで、面接時により言語化でき発言できると考えたから     |
|洗い出した要件   |                                                                    |


| 開発環境       |                                       | 
| ------------- | ------------------------------------- |
| フロントエンド  | HTML,CSS / JavaScript                 |
| バックエンド    | Ruby / Ruby on Rails                  |
| インフラ       | AWS (EC2), MmSQL                      |
| テストコード    | Rspec                                 |
| テキストエディタ | Visual Studio Code                    |
| タスク管理      | GitHubプロジェクトボード                 |


| 実際のプロフィール画面                                                                 | 
| ------------- | ------------------------------------------------------------------ |
[![Image from Gyazo](https://i.gyazo.com/9dd53e37da83d30734b654ae18b90801.gif)](https://gyazo.com/9dd53e37da83d30734b654ae18b90801)
|                                                                                     |

| データベース設計                                                                      | 
| ------------- | ------------------------------------------------------------------ |
[![Image from Gyazo](https://i.gyazo.com/c5e076d004b9b627ca14d77d2bbc580f.png)](https://gyazo.com/c5e076d004b9b627ca14d77d2bbc580f)
|                                                                                     |


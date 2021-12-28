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
| section_id         | integer    | null: false                    |
| strength           | text       |                                |
| weakness           | text       |                                |
| user               | references | null: false, foreign_key: true |

### Association

belongs_to :user
has_many :favorites

## favorites
| Column             | Type       | Options                        |
| -------------------| ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| profile            | references | null: false, foreign_key: true |

### Association

belongs_to: user
belongs_to: profile
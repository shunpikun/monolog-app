# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

## Association

- has_many :properties


## property テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| name            | string     | null: false                    |
| info            | text       | null: false                    |
| frequency_id    | integer    | null: false                    |
| storage         | string     | null: false                    |
| user            | references | null: false, foreign_key: true |

## Association

- belongs_to :user
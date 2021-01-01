## usersテーブル

| Column             | Type   | Option      |
| ------------------ | ------ | ----------- |
| family_name        | string | null: false |
| first_name         | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
has_many :menus

## menusテーブル

| Column | Type    | Option      |
| ------ | ------  | ----------- |
| title  | string  | null: false |
| price  | integer | null: false |
| text   | text    | null: false |

### Association
belongs_to :user

## customerテーブル

| Column           | Type    | Option      |
| ---------------- | ------- | ----------- |
| family_name      | string  | null: false |
| number_of_people | integer | null: false |

### Association
has_many :menus
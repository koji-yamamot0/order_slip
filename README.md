## staffsテーブル

| Column             | Type   | Option      |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :menus

## customersテーブル

| Column             | Type       | Option            |
| ------------------ | ---------- | ----------------- |
| family_name        | string     | null: false       |
| email              | string     | null: false       |
| encrypted_password | string     | null: false       |
| cart               | references | foreign_key: true |

### Association
- belongs_to :cart

## menusテーブル

| Column | Type    | Option      |
| ------ | ------  | ----------- |
| title  | string  | null: false |
| price  | integer | null: false |
| text   | text    | null: false |

### Association
- belongs_to :staff
- has_many :carts
- has_many :cart_menus

## cartsテーブル

| Column | Type       | Option            |
| ------ | ---------- | ----------------- |
| user   | references | foreign_key: true |

- belongs_to :customer
- has_many :menus
- has_many :cart_menus

### cart_menusテーブル

| Column   | Type         | Option            |
| -------- | ------------ | ----------------- |
| cart     | references   | foreign_key: true |
| menu     | references   | foreign_key: true |
| quantity | integer      |                   |

### Association

- belongs_to :cart
- belongs_to :menu
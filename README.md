# テーブル設計

## users　 テーブル

| Column               ｜ Type      | Options       |
| -------------------- ｜ --------- | ------------- |
| email                ｜string     | null:false    |
| encrypted_password   ｜string     | null:false    |
| name                 ｜string     | null:false    |
| profile              ｜text       | null:false    |
| occupation           ｜text       | null:false    |
| position             ｜text       | null:false    |

### Association
- has_many :prototypes
- has_many :comments

##　prototypesテーブル
| Column               ｜ Type      | Options                           |
| -------------------- ｜ --------- | --------------------------------- |
| title                ｜string     | null:false                        |
| catch_copy           ｜string     | null:false                        |
| concept              ｜string     | null:false                        |
| image                ｜           |                                   |
| user                 ｜references | null:false,foreign_key: true      |

### Association
- has_many :comments

##　commentsテーブル
| Column               ｜ Type      | Options                           |
| -------------------- ｜ --------- | --------------------------------- |
| title                ｜string     | null:false                        |
| user                 ｜references | null:false,foreign_key: true      |
| prototype            ｜references | null:false,foreign_key: true      |


# README

## users table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unipue: true|

### Association
- has_many :tweets
- has_many :piggy-bank

## tweets table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, forein_key: true|
|text|text|
|savings|integer|null: false|

### Association
- belongs_to :user
- belongs_to :piggy-bank

## piggy-bank table

|Column|Type|Options|
|------|----|-------|
|total_savings|integer|
|user_id|integer|null: false, forein_key: true|

### Association
- has_many :tweets
- belongs_to :user
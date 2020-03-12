# README

## productsテーブル

|Column|Type|Options|
|------|----|-------|
|product_name|text||

### Association
- has_many :trades


## storage_locationsテーブル

|Column|Type|Options|
|------|----|-------|
|storage_location_name|string||

### Association
- has_many :trades


## staffsテーブル

|Column|Type|Options|
|------|----|-------|
|staff_name|string||

### Association
- has_many :trades


## buyersテーブル

|Column|Type|Options|
|------|----|-------|
|buyer_name|string||

### Association
- has_many :trades


## memosテーブル

|Column|Type|Options|
|------|----|-------|
|memo|string||

### Association
- has_many :trades


## contactsテーブル

|Column|Type|Options|
|------|----|-------|
|contact_data|string||

### Association
- has_many :trades


## tradesテーブル

|Column|Type|Options|
|------|----|-------|
|date|string||
|price|string||
|payment_date|string||
|delivery_date|string||
|buyer|references|foreign_key: true|
|product|references|foreign_key: true|
|staff|references|foreign_key: true|
|storage_location|references|foreign_key: true|

### Association
- belongs_to :buyer
- belongs_to :product
- belongs_to :staff
- belongs_to :storage_location
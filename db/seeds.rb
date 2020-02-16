# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Customer.find_or_create_by(id:1, surname: "空条", name: "承太郎", surname_kana: "くうじょう", name_kana: "じょうたろう", email: "aaa@test.jp", encrypted_password:"111111", phone_number:"010-xxx-xxx", postal_code:0000000, address:"東京都渋谷区神南 パークウェースクエア2 1階", customer_status: 0)
# Customer.create(id:1, surname: "山田", name: "花子", surname_kana: "ヤマダ", name_kana: "ハナコ", phone_number: "090-0000-0000", postal_code: "1500041", address: "東京都渋谷区神南１丁目１９−１１　パークスクエア２ 4階", email: "example.com")
# OrderItem.find_or_create_by(id:1, order_id:1, item_id:2, order_quantity:1, tax_included_price:500, create_status:0)

# Order.find_or_create_by(id:1, customer_id: 1, billing_amount: 2000, postage:800, method_of_payment: 0, order_status: 1, delivery_name: "ぺんたろう", shipping_address: "南極の氷上", postale_code: 0000000)

Customer.create(id:1, surname: "山田", name: "花子", surname_kana: "ヤマダ", name_kana: "ハナコ", phone_number: "090-0000-0000", postal_code: "1500041", address: "東京都渋谷区神南１丁目１９−１１　パークスクエア２ 4階", email: "11@11", password: "1111111")
Customer.create(id:2, surname: "ぺん", name: "太郎", surname_kana: "ペン", name_kana: "タロウ", phone_number: "090-0000-0000", postal_code: "1500041", address: "東京都渋谷区神南１丁目１９−１１　パークスクエア２ 4階", email: "12@12", password: "2222222")
Customer.create(id:3, surname: "こうぺん", name: "ちゃん", surname_kana: "コウペン", name_kana: "チャン", phone_number: "090-0000-0000", postal_code: "1500041", address: "東京都渋谷区神南１丁目１９−１１　パークスクエア２ 4階", email: "13@13", password: "3333333")

Staff.create(email: 'admin@admin', password: 111111)
Order.create(id:1, :customer_id => 1, :billing_amount => 10000, :postage => 800, :method_of_payment => true, :delivery_name =>'ぺん太郎', :shipping_address => "配送先住所", :postale_code => 1600000, :order_status => 'waiting')
# Order.create!(id:2, :customer_id => 2, :billing_amount => 10000, :postage => 800, :method_of_payment => false, :delivery_name =>'ぺん太郎', :shipping_address => "配送先住所", :postale_code => 1600000, :order_status => 'waiting')
# Order.create!(id:3, :customer_id => 3, :billing_amount => 10000, :postage => 800, :method_of_payment => true, :delivery_name =>'ぺん太郎', :shipping_address => "配送先住所", :postale_code => 1600000, :order_status => 'waiting')

Genre.find_or_create_by(id:1, name: "ケーキ", genre_status: 1)
Genre.find_or_create_by(id:2, name: "クッキー", genre_status: 1)
Genre.find_or_create_by(id:3, name: "チョコレート", genre_status: 1)
Genre.find_or_create_by(id:4, name: "プリン・ゼリー", genre_status: 1)
Genre.find_or_create_by(id:5, name: "和菓子", genre_status: 0)
Genre.find_or_create_by(id:6, name: "アイス", genre_status: 1)

Item.find_or_create_by(id:1, name: "洋梨のチーズタルト", non_taxed_price: 1200, genre_id: 1, description: "aaa")
Item.find_or_create_by(id:2, name: "ザッハトルテ", non_taxed_price: 2900, genre_id: 1, description: "aaa")
Item.find_or_create_by(id:3, name: "いちごのショートケーキ", non_taxed_price: 500, genre_id: 1, description: "aaa")
Item.find_or_create_by(id:4, name: "卵たっぷり濃厚プリン", non_taxed_price: 500, genre_id: 3, description: "aaa")
Item.find_or_create_by(id:5, name: "紅茶のクッキー", non_taxed_price: 800, genre_id: 2, description: "aaa")
Item.find_or_create_by(id:6, name: "フルーツタルト", non_taxed_price: 2900, genre_id: 1, description: "aaa")
Item.find_or_create_by(id:7, name: "大きな桃のゼリー", non_taxed_price: 480, genre_id: 3, description: "aaa")
Item.find_or_create_by(id:8, name: "マカロンセット（8個）", non_taxed_price: 1200, genre_id: 4, description: "aaa")
Item.find_or_create_by(id:9, name: "マカロンセット（16個）", non_taxed_price: 2000, genre_id: 4, description: "aaa")
Item.find_or_create_by(id:10, name: "バナナケーキ", non_taxed_price: 980, genre_id: 1, description: "aaa")

OrderItem.create!(id:1, order_id: 1, item_id: 1, order_quantity: 1, tax_included_price: 500, create_status: 1)
OrderItem.create!(id:2, order_id: 1, item_id: 2, order_quantity: 2, tax_included_price: 2000, create_status: 2)
OrderItem.create!(id:3, order_id: 1, item_id: 3, order_quantity: 3, tax_included_price: 3000, create_status: 3)
# OrderItem.create!(id:4, order_id: 1, item_id: 3, order_quantity: 3, tax_included_price: 3000, create_status: 3)
# OrderItem.create!(id:5, order_id: 1, item_id: 3, order_quantity: 3, tax_included_price: 3000, create_status: 3)
# OrderItem.create!(id:6, order_id: 1, item_id: 3, order_quantity: 3, tax_included_price: 3000, create_status: 3)
# OrderItem.create!(id:7, order_id: 1, item_id: 3, order_quantity: 3, tax_included_price: 3000, create_status: 3)

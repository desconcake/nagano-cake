# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.find_or_create_by(id:1, name: "ケーキ", genre_status: 1)
Genre.find_or_create_by(id:2, name: "クッキー", genre_status: 1)
Genre.find_or_create_by(id:3, name: "プリン", genre_status: 1)
Genre.find_or_create_by(id:4, name: "焼き菓子", genre_status: 1)
Genre.find_or_create_by(id:5, name: "キャンディ", genre_status: 0)
Genre.find_or_create_by(id:6, name: "和菓子", genre_status: 1)

Item.find_or_create_by(name: "洋梨のチーズタルト", non_taxed_price: "1,200", genre_id: 1, description: "aaa")
Item.find_or_create_by(name: "ザッハトルテ", non_taxed_price: "2,900", genre_id: 1, description: "aaa")
Item.find_or_create_by(name: "いちごのショートケーキ", non_taxed_price: "500", genre_id: 1, description: "aaa")
Item.find_or_create_by(name: "卵たっぷり濃厚プリン", non_taxed_price: "500", genre_id: 3, description: "aaa")
Item.find_or_create_by(name: "紅茶のクッキー", non_taxed_price: "800", genre_id: 2, description: "aaa")
Item.find_or_create_by(name: "フルーツタルト", non_taxed_price: "2,900", genre_id: 1, description: "aaa")
Item.find_or_create_by(name: "大きな桃のゼリー", non_taxed_price: "480", genre_id: 3, description: "aaa")
Item.find_or_create_by(name: "マカロンセット（8個）", non_taxed_price: "1,200", genre_id: 4, description: "aaa")
Item.find_or_create_by(name: "マカロンセット（16個）", non_taxed_price: "2,000", genre_id: 4, description: "aaa")
Item.find_or_create_by(name: "バナナケーキ", non_taxed_price: "980", genre_id: 1, description: "aaa")
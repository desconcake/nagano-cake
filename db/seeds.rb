# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create!(
	email: 'test@test.com',
	encrypted_password: '111111',
	surname: '姓',
	name: '名',
	surname_kana: '姓カナ'
	name_kana: '名カナ',
	phone_number: '09000000000'
	postal_code: '1600000'
	address: '東京都渋谷区神南	１丁目'
	customer_status: '0'
)




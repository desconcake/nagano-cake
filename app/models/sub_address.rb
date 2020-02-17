class SubAddress < ApplicationRecord

	validates :shipping_address, presence: true

	validates :postal_code, presence: true

	validates :delivery_name, presence: true

	has_many :orders, through: :customers

	belongs_to :customer



end

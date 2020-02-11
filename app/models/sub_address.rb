class SubAddress < ApplicationRecord
	has_many :orders, through: :customers

	belongs_to :customer
end

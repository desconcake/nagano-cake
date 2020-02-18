class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

       has_many :orders
       has_many :sub_addresses

  has_many :sub_addresses
  has_many :cart_items
  has_many :orders

  acts_as_paranoid
  def full_name
    surname + name
  end

  def full_name_kana
    surname_kana + name_kana
  end

end

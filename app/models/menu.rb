class Menu < ApplicationRecord
  belongs_to :staff
  has_many :customers
  has_one_attached :image
  has_many :cart_menus
  has_many :carts, through: :cart_menus, dependent: :destroy
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end

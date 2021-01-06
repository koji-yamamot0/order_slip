class Cart < ApplicationRecord
  has_many :cart_menus
  has_many :menus, through: :cart_menus, dependent: :destroy
  belongs_to :customer
end

class CartMenu < ApplicationRecord
  belongs_to :cart
  belongs_to :menu
end

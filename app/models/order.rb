class Order < ApplicationRecord
  belongs_to :customer

  validates :customer, uniqueness: true
end

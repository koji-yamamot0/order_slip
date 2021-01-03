class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'メインメニュー' },
    { id: 3, name: 'サイドメニュー' },
    { id: 4, name: 'デザート' }
  ]
  
  include ActiveHash::Associations
  has_many :menus
end

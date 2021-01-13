class CreateCartMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_menus do |t|
      t.references :cart, foreign_key: true
      t.references :menu, foreign_key: true
      t.boolean :check,   default: false
      t.timestamps
    end
  end
end

class CreateCartMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_menus do |t|

      t.timestamps
    end
  end
end

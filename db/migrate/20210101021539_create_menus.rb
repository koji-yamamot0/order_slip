class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string  :title, null: false
      t.integer :price, null: false
      t.text    :text,  null: false
      t.timestamps
    end
  end
end

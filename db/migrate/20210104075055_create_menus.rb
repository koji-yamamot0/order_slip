class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :title,        null: false
      t.string :text,         null: false
      t.integer :price,       null: false
      t.integer :category_id, null: false
      t.string :staff_name
      t.references :staff,    foreign_key: true
      t.timestamps
    end
  end
end

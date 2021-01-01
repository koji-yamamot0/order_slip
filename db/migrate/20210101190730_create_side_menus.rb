class CreateSideMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :side_menus do |t|

      t.timestamps
    end
  end
end

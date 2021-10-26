class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.string :name
      t.string :description
      t.decimal :price, precision: 6, scale: 6

      t.timestamps
    end
  end
end

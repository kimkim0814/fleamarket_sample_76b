class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.string :description, null: false
      t.string :user_id, null: false
      t.string :category_id, null: false
      t.string :brand_id, null: false
      t.string :size, null:false
      t.integer :status, null:false
      t.string :cost, null:false
      t.string :days, null:false
      t.timestamps
    end
  end
end

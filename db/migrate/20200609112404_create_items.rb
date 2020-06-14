class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.string :description, null: false
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true
      t.string :size, null:false
      t.integer :status, null:false
      t.string :cost, null:false
      t.string :days, null:false
      t.date   :sold_day
      t.timestamps
    end
  end
end

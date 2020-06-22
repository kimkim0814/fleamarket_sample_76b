class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.string :description, null: false
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.references :brand, foreign_key: true
      t.string :size, null:false
      t.string :status, null:false
      t.string :cost, null:false
      t.string :area, null:false
      t.string :days, null:false
      t.date   :sold_day
      t.timestamps
    end
  end
end

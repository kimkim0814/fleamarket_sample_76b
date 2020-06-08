class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :postcode,            null: false
      t.integer :prefecture_code,     null: false
      t.string :address_city,         null: false
      t.string :address_street,       null: false
      t.string :address_building,     null: false
      t.integer :phone_number,        null: false
      t.references :user
      t.timestamps
    end
  end
end

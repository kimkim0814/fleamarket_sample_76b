class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :postcode,            null: false
      t.integer :prefecture_code,     null: false
      t.string :address_city,         null: false
      t.string :address_street,       null: false
      t.string :address_building
      t.string :phone_number
      t.references :user
      t.timestamps
    end
  end
end

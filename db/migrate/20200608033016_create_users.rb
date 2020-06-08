class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true
      t.string :password, null: false
      t.string :nickname, null: false
      t.string :familyname, null: false
      t.string :firstname, null: false
      t.string :familyname_kana, null: false
      t.date   :birth_date, null: false
      t.integer :postcode, null: false
      t.integer :prefecture_code , null: false
      t.string :address_city, null: false
      t.string :address_street, null: false
      t.string :address_building
      t.integer :phone_number
      t.timestamps 
    end
  end
end

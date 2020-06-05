class CreateIdentifications < ActiveRecord::Migration[5.2]
  def change
    create_table :identifications do |t|
      t.string :familyname,       null: false 
      t.string :firstname,        null: false 
      t.string :familyname_kana,  null: false 
      t.string :firstname_kana,   null: false 
      t.date :birth_date,         null: false 
      t.references :user_id,      null: false
      t.timestamps
    end
  end
end

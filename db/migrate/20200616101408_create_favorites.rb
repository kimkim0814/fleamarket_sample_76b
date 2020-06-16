class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user,null:false,foreign_key:true, unique: true
      t.references :item,null:false,foreign_key:true, unique: true
      t.timestamps
    end
  end
end

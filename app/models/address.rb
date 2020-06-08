class Address < ApplicationRecord
  belongs_to :identification, optional: true
  validates :postcode, :prefecture_code, :address_city, :address_street,:address_building,:phone_number,presence: true
  belongs_to :user
 
  include JpPrefecture
  jp_prefecture :prefecture_code


  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end   

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end 
end
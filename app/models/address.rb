class Address < ApplicationRecord
  belongs_to :identification, optional: true
  validates :postcode, :prefecture_code, :address_city, :address_street, presence: true
  validates :postcode, format: { with: /\A\d{3}[-]\d{4}\z|\A\d{3}[-]\d{2}\z|\A\d{3}\z|\A\d{5}\z|\A\d{7}\z/ , message: "は半角の3桁、5桁または7桁の数字を入力してください"}
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

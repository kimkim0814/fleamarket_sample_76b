class Identification < ApplicationRecord
  belongs_to :user, optional: true
  has_one :address
  accepts_nested_attributes_for :address 
  validates :familyname,:firstname,:familyname_kana,:firstname_kana,:birth_date ,presence: true
  validates :familyname,:firstname, format: { with: /\A[ぁ-んァ-ン一-龥]/ , message: "全角のみ使用できます"}
  validates :familyname_kana,:firstname_kana, format: { with: /\A[ぁ-んー－]+\z/ , message: "全角ひらがなのみ使用できます"}
end

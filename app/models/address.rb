class Address < ApplicationRecord
  belongs_to :identification, optional: true
  validates :postcode, :prefecture_code, :address_city, :address_street,:address_building,:phone_number,presence: true
end

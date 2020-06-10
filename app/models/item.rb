class Item < ApplicationRecord
  belongs_to :user
  belongs_to :brand
  belongs_to :category
  has_many :images
end


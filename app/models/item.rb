class Item < ApplicationRecord
  belongs_to :user
  belongs_to :brand
  belongs_to :category
  has_many :images
  has_many :favorites

  def self.search(search)
    if search
      Item.where('name LIKE(?)', "%#{search}%")
    else
      Item.all
    end
    # return Item.all unless search
    # Item.where('name LIKE(?)', "%#{search}%")
  end
end


class Item < ApplicationRecord
  belongs_to :user
  belongs_to :brand, optional: true
  belongs_to :category
  validates :name, :price, :description, :size, :status, :cost, :days, presence: true

  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true
  validates_presence_of :images
end

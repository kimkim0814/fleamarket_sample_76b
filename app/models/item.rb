class Item < ApplicationRecord
  belongs_to :user,     optional: true
  belongs_to :brand,    optional: true
  belongs_to :category, optional: true
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true
  # validates :name, :price, :description, :user_id, :category_id, :size, :status, :cost, :days, :sold_day, presence: true
end

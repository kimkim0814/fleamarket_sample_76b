class Item < ApplicationRecord
  belongs_to :user
  belongs_to :brand, optional: true
  belongs_to :category
  validates :name, :price, :description, :category_id, :size, :status, :cost, :area, :days, presence: true
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true
  validates_presence_of :images
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end

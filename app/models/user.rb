class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname,presence: true
  has_one :identification

  accepts_nested_attributes_for :identification

  has_one :address
  accepts_nested_attributes_for :address
end

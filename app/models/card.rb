class Card < ApplicationRecord
  belongs_to :user,optional: true

  validates  :customer_id, :card_id, presence: true
end

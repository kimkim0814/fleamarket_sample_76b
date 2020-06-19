require 'rails_helper'

# RSpec.describe Card, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"

describe Card do
  describe '#create' do
    it "user_id、customer_id、card_idが存在すれば登録できること" do
      card = build(:card)
      expect(card).to be_valid
    end

    it "customer_idが空では登録できないこと" do
      card = build(:card, customer_id: nil)
      card.valid?
      expect(card.errors[:customer_id].first).to include("can't be blank")
    end


    it "card_idが空では登録できないこと" do
      card = build(:card, card_id: nil)
      card.valid?
      expect(card.errors[:card_id].first).to include("can't be blank")
    end
  end
end

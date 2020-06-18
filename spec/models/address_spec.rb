require 'rails_helper'

describe '住所登録テスト' , model: Address do
  describe '#create' do

    it "postcode が空では登録出来ないこと" do
      address = build(:address, postcode: nil)
      address.valid?
      expect(address.errors[:postcode]).to include("を入力してください")
    end

    it "prefecture_code が空では登録出来ないこと" do
      address = build(:address, prefecture_code: nil)
      address.valid?
      expect(address.errors[:prefecture_code]).to include("を入力してください")
    end

    it "address_city が空では登録出来ないこと" do
      address = build(:address, address_city: nil)
      address.valid?
      expect(address.errors[:address_city]).to include("を入力してください")
    end
    
    it "address_streetが空では登録出来ないこと" do
      address = build(:address, address_street: "")
      address.valid?
      expect(address.errors[:address_street]).to include("を入力してください")
    end

    it "postcode が数字以外入力できないこと" do
      address = build(:address, postcode: "aaa")
      address.valid?
      expect(address.errors[:postcode]).to include("は半角の3桁、5桁または7桁の数字を入力してください")
    end

    describe do
      it 'return dummy' do
        allow_any_instance_of(Address).to receive(:prefecture_name).and_return('dummy')
        puts Address.new.prefecture_name 
      end
    end
  end
end
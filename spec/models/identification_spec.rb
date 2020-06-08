require 'rails_helper'

describe Identification do
  describe '#create' do
    # 1
    it "苗字と名前、苗字のふりがな、名前のふりがな、生年月日が存在すれば登録できること" do
      identification = build(:identification)
      expect(identification).to be_valid
    end

    # 2
    it " 苗字がない場合は登録できないこと" do
      identification = build(:identification, familyname: nil)
      identification.valid?
      expect(identification.errors[:familyname]).to include("can't be blank")
    end

    # 3
    it "名前がない場合は登録できないこと" do
      identification = build(:identification, firstname: nil)
      identification.valid?
      expect(identification.errors[:firstname]).to include("can't be blank")
    end

    # 4
    it "苗字のふりがながない場合は登録できないこと" do
      identification = build(:identification, familyname_kana: nil)
      identification.valid?
      expect(identification.errors[:familyname_kana]).to include("can't be blank")
    end

    # 5
    it "名前のふりがながない場合は登録できないこと" do
      identification = build(:identification, firstname_kana: nil)
      identification.valid?
      expect(identification.errors[:firstname_kana]).to include("can't be blank")
    end

    # 6
    it " 苗字が全角でなかったら登録できないこと" do
      identification = build(:identification, familyname: "aaa")
      identification.valid?
      expect(identification.errors[:familyname]).to include("全角のみ使用できます")
    end

    # 7
    it "名前が全角でなかったら登録できないこと" do
      identification = build(:identification, familyname: "aaa")
      identification.valid?
      expect(identification.errors[:familyname]).to include("全角のみ使用できます")
    end

    # 8
    it "苗字のふりがなが全角ひらがなでなかったら登録できないこと" do
      identification = build(:identification, familyname_kana: "aaa")
      identification.valid?
      expect(identification.errors[:familyname_kana]).to include("全角ひらがなのみ使用できます")
    end

    # 9
    it "名前のふりがなが全角ひらがなでなかったら登録できないこと" do
      identification = build(:identification, firstname_kana: "aaa")
      identification.valid?
      expect(identification.errors[:firstname_kana]).to include("全角ひらがなのみ使用できます")
    end

    # 10
    it "生年月日がないと登録できないこと" do
      identification = build(:identification, birth_date: nil)
      identification.valid?
      expect(identification.errors[:birth_date]).to include("can't be blank")
    end
  end
end
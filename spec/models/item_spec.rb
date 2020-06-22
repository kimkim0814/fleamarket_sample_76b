require 'rails_helper'
require "pry-rails"

describe 'search単体テスト', model: Item do 
  describe '#search' do 
     # "a"で検索した場合
    context "search by 'a'" do
      it "itemを返す" do
        item = create(:item)
        search_item = Item.search("a")
        expect(search_item.first).to eq item
      end
    
      it "itemを返さない" do
        item = create(:item,name: "b")
        search_item = Item.search("a")
        expect(search_item.first).to_not eq item
      end
    end

    # 入力しなかった場合
    context "search by nil" do
      # 空を返す
      it "itemを返す" do
        item = create(:item)
        search_item = Item.search("")
        expect(search_item.first).to eq item
      end
    end

  end
end

describe Item do
  describe '#create' do
    context 'Itemを保存できる場合' do
      it "nameがない場合は登録できないこと" do
        item = build(:item, name: nil)
        item.valid?
        expect(item.errors[:name]).to include("can't be blank")
      end

      it "category_idがない場合は登録できないこと" do
        item = build(:item, category_id: nil)
        item.valid?
        expect(item.errors[:category_id]).to include("can't be blank")
      end

      it "priceがない場合は登録できないこと" do
        item = build(:item, price: nil)
        item.valid?
        expect(item.errors[:price]).to include("can't be blank")
      end

      it "descriptionがない場合は登録できないこと" do
        item = build(:item, description: nil)
        item.valid?
        expect(item.errors[:description]).to include("can't be blank")
      end
      
      it "sizeがない場合は登録できないこと" do
        item = build(:item, size: nil)
        item.valid?
        expect(item.errors[:size]).to include("can't be blank")
      end

      it "statusがない場合は登録できないこと" do
        item = build(:item, status: nil)
        item.valid?
        expect(item.errors[:status]).to include("can't be blank")
      end

      it "costがない場合は登録できないこと" do
        item = build(:item, cost: nil)
        item.valid?
        expect(item.errors[:cost]).to include("can't be blank")
      end

      it "areaがない場合は登録できないこと" do
        item = build(:item, area: nil)
        item.valid?
        expect(item.errors[:area]).to include("can't be blank")
      end

      it "daysがない場合は登録できないこと" do
        item = build(:item, days: nil)
        item.valid?
        expect(item.errors[:days]).to include("can't be blank")
      end

      it "user_idがない場合は登録できないこと" do
        item = build(:item, user_id: nil)
        item.valid?
        expect(item.errors[:user_id]).to include("can't be blank")
      end

      it "全て揃っている時保存できる" do
        item = build(:item)
        expect(item).to be_valid
      end
    end
  end
end
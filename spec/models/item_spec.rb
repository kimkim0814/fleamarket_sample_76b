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

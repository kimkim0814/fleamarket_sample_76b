class PurchaseController < ApplicationController
  require 'payjp'#Payjpの読み込み

  def index
    # if @card.blank?
    #   redirect_to new_card_path 
    # else
    #   Payjp.api_key = Rails.application.credentials.payjp[:PAYJP_PRIVATE_KEY]
    #   #保管した顧客IDでpayjpから情報取得
    #   customer = Payjp::Customer.retrieve(@card.customer_id) 
    #   #カード情報表示のためインスタンス変数に代入
    #   @default_card_information = customer.cards.retrieve(@card.card_id)
    end

  def create
    Payjp.api_key = Rails.application.credentials.payjp[:PAYJP_PRIVATE_KEY]
    Payjp::Charge.create(
      :amount => @item.price, #支払金額を引っ張ってくる
      :customer => @card.customer_id,  #顧客ID
      :currency => 'jpy',              #日本円
    )
    redirect_to done_item_purchase_path #完了画面に移動
  end


  def done
  end
end

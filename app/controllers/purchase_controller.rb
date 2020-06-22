class PurchaseController < ApplicationController
  require 'payjp'
  before_action :set_card, :set_item

  def index
    if @card.blank?
      redirect_to new_card_path 
    else
      Payjp.api_key = Rails.application.credentials.payjp[:PAYJP_PRIVATE_KEY]
      customer = Payjp::Customer.retrieve(@card.customer_id) 
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
  end


  def create
    Payjp.api_key = Rails.application.credentials.payjp[:PAYJP_PRIVATE_KEY]
    Payjp::Charge.create(
      :amount => @item.price, 
      :customer => @card.customer_id,  
      :currency => 'jpy',             
    )
    @item.update(sold_day: Time.current)
    redirect_to done_item_purchase_index_path #完了画面に移動
  end

  def done
  end

  private

  def set_card
    @card = Card.find_by(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

end

class CardsController < ApplicationController

  require "payjp"
  before_action :authenticate_user!

    def new
      card = Card.where(user_id: current_user.id)
      redirect_to card_path(current_user.id) if card.exists?

      add_breadcrumb "トップページ",  root_path
      add_breadcrumb "マイページ",  mypages_index_path
      add_breadcrumb "支払方法",  mypages_mycard_path
      add_breadcrumb "クレジットカード入力情報", new_card_path
    end

    def create
      Payjp.api_key = Rails.application.credentials.payjp[:PAYJP_PRIVATE_KEY]
      if params['payjp-token'].blank?
        redirect_to new_card_path
      else
        customer = Payjp::Customer.create(
        card: params['payjp-token'],metadata: {user_id: current_user.id}) 
        @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
          redirect_to card_path(current_user.id)
      else
          redirect_to cards_path
      end
    end
  end

    def destroy 
      card = Card.find_by(user_id: current_user.id)
      unless card.blank?
        Payjp.api_key = Rails.application.credentials.payjp[:PAYJP_PRIVATE_KEY]
        customer = Payjp::Customer.retrieve(card.customer_id)
        customer.delete
        card.delete
      end
        redirect_to new_card_path
    end

    def show
      card = Card.find_by(user_id: current_user.id)
      if card.blank?
        redirect_to new_card_path 
      else
        Payjp.api_key = Rails.application.credentials.payjp[:PAYJP_PRIVATE_KEY]
        customer = Payjp::Customer.retrieve(card.customer_id)
        @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end
end

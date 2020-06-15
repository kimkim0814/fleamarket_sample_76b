class CardsController < ApplicationController
  before_action :authenticate_user!

  def new
    card = Card.where(user_id: current_user.id)
    redirect_to card_path(current_user.id) if card.exists?
  end
  
  def pay
    Payjp.api_key = Rails.application.credentials[:PAYJP_SECRET_KEY]
    if params['payjp-token'].blank?
      redirect_to new_card_path
  end
end

  def destroy

  end

  def show
    card = Card.find_by(user_id: current_user.id)
    if card.blank?
      redirect_to new_card_path 
    else
      Payjp.api_key = Rails.application.credentials[:PAYJP_SECRET_KEY]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
  end
end

end

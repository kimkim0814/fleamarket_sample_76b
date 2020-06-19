class Items::SearchesController < ApplicationController
  def index
    @items = Item.search(params[:search]).includes(:images).order(updated_at: "DESC")
  end
end

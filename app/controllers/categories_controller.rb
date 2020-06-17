class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @items = Item.includes(:images).order(updated_at: "DESC")
  end
end

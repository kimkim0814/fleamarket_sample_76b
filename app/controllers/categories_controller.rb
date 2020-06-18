class CategoriesController < ApplicationController
  def index
  end
  def show
    @category = Category.find(params[:id])
    @items = Item.where(category_id: @category.id).includes(:images).order(updated_at: "DESC")
  end
end

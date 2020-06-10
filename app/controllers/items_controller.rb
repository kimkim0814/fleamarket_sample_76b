class ItemsController < ApplicationController
  def index
    @items = Item.includes(:images).order(updated_at: "DESC")
  end

  def show
    # @item = Item.find(params[:id])
  end
  private

  def set_categories
    @categories      = CategoryIndex.all
    @bigcategories   = Bigcategory.all
    @smallcategories = Smallcategory.all
  end
end

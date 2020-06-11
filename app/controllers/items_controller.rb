class ItemsController < ApplicationController
  def index
    @items = Item.includes(:images).order(updated_at: "DESC")
  end

  def show
    @item = Item.find(params[:id])
    @comment = Comment.new

  end
  def itemsbuy
  end

  def new
  end

  private

  def set_categories
    @categories      = CategoryIndex.all
    @bigcategories   = Bigcategory.all
    @smallcategories = Smallcategory.all
  end

  def item_params
    params.require(:item).permit(:name, :category_id,:days,:price, :brand_id, :explanation,images: [:image, :_destroy, :id])
  end
end

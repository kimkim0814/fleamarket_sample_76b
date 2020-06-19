class ItemsController < ApplicationController
  before_action :set_item,only:[:show,:destroy,:edit]
  def index
    @items = Item.includes(:images).order(updated_at: "DESC")
  end

  def show
    @comment = Comment.new
    @category = Category.find(params[:id])
    @favorite = Favorite.new
  end

  
  def itemsbuy
  end

  def new
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    else
      redirect_to item_path
    end
  end
  private

  def set_categories
    @categories      = CategoryIndex.all
    @bigcategories   = Bigcategory.all
    @smallcategories = Smallcategory.all
  end

  def item_params
    params.require(:item).permit(:name, :category_id,:days,:price, :brand_id, :explanation,images: [:image, :_destroy, :id]).merge(user_id: current_user.id)
  end

  def set_item
      @item = Item.find(params[:id])
  end

  # def set_item
  #   @item = Item.find(params[:id])
  # end


end

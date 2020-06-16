class ItemsController < ApplicationController
  before_action :set_item,only:[:show,:destroy,:edit,:update]
  def index
    @items = Item.includes(:images).order(updated_at: "DESC")
  end

  def show

    @comment = Comment.new

  end
  def itemsbuy
  end

  def new
  end

  def edit
    
  end

  def update 
    if @item.update(item_params)
      redirect_to item_path
    else
      redirect_to "#"
    end
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
    params.require(:item).permit(:name, :category_id,:days,:price, :brand_id, :description,images: [:image, :id])
  end

  def set_item
      @item = Item.find(params[:id])
  end
end

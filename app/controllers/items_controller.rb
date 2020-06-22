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
      @item = Item.new
      @item.images.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      flash.now[:alert] = '必須項目を入力してください。'
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
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
    params.require(:item).permit(
      :name,
      :price,
      :description,
      :user_id,
      :category_id,
      :brand_id,
      :size,
      :status,
      :cost,
      :area,
      :days,
      images_attributes: [:image]
    ).merge(user_id: current_user.id)
  end

  def set_item
      @item = Item.find(params[:id])
  end
end

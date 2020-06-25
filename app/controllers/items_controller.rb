class ItemsController < ApplicationController
  before_action :set_item,only:[:show,:destroy,:edit,:update]
  before_action :move_to_index, only: [:show]
  def index
    @items = Item.includes(:images).order(updated_at: "DESC")
  end

  def show
    @comment = Comment.new
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
      @item.images.new
      render :new
    end
  end

  def edit
  end


  def destroy
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
 # 画像編集でDBが画像を拾ってくる
  def set_images
    @images = Image.where(item_id: params[:id])
  end

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
      :brand_id,
      images_attributes: [:image,:_destroy, :id]
    ).merge(user_id: current_user.id)
  end


  def set_item
      @item = Item.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end

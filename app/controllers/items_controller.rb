class ItemsController < ApplicationController
  before_action :set_item,only:[:show,:destroy,:edit,:update]
  def index
    @items = Item.includes(:images).order(updated_at: "DESC")
  end

  def show
    @comment = Comment.new
    @category = Item.find(params[:id])
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
    before_images_ids = @item.images.ids
    if params[:item].keys.include?("image") || params[:item].keys.include?("images_attributes") 
      if params[:item].keys.include?("image") 
      # dbにある画像がedit画面で一部削除してるか確認
        update_images_ids = params[:item][:image].values #投稿済み画像の残り
        before_images_ids.each do |before_img_id|
          Image.find(before_img_id).destroy unless update_image_ids.include?("#{before_img_id}") 
        end
      else
        before_images_ids.each do |before_img_id|
          Image.find(before_img_id).destroy 
        end
      end
        redirect_to item_path
      else
        redirect_back(fallback_location: root_path,flash: {success: '画像がありません'})
      end
    # if @item.update(item_update_params)
    #   redirect_to item_path
    # else
    #   redirect_to "#"
    # end
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

  def item_update_params
    params.require(:item).permit(
      :name,
      [images_attributes: [:image, :_destroy, :id]])
  end 
end

class ItemsController < ApplicationController
  def index
    @items = Item.includes(:images).order(updated_at: "DESC")
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
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
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
      :days,
      :sold_day,
      images_attributes: [:image]
    )
  end
end
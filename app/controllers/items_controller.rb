class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
  end

  private

  def set_categories
    @categories      = CategoryIndex.all
    @bigcategories   = Bigcategory.all
    @smallcategories = Smallcategory.all
  end
end

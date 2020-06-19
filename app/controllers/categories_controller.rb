class CategoriesController < ApplicationController
  def index
    add_breadcrumb "トップページ",  root_path
    add_breadcrumb "カテゴリー一覧",  categories_path
  end
  def show
    @category = Category.find(params[:id])
    @items = Item.where(category_id: @category.id).includes(:images).order(updated_at: "DESC")
    add_breadcrumb "トップページ",  root_path
    add_breadcrumb "カテゴリー一覧",  categories_path
    if @category.depth == 0
      add_breadcrumb "#{@category.name}"
    elsif @category.depth == 1
      add_breadcrumb "#{@category.parent.name}", "#{@category.parent_id}"
      add_breadcrumb "#{@category.name}"
    else  @category.depth ==2 
      add_breadcrumb "#{@category.root.name}", "#{@category.root_id}"
      add_breadcrumb "#{@category.parent.name}", "#{@category.parent_id}"
      add_breadcrumb "#{@category.name}"
    end
  end
end

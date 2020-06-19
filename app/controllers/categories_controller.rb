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
    add_breadcrumb "#{@category.name}", "#{@category.id}"
  end
end

class FavoritesController < ApplicationController
  def create
    @favorite = current_user.likes.create(post_id: params[:post_id])
    redirect_back(fallback_location: root_path)
  end 
  
  def destroy
    @favorite = Favorite.find_by(item_id: params[:item_id], user_id: current_user.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end

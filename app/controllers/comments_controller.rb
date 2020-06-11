class CommentsController < ApplicationController


  def create
   if @comment = Comment.create
    redirect_to :root
   else
    render 'new'
   end
    @item = Item.find(params[:item_id])
  end


private

def comment_params
  params.require(:comment).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
end

end
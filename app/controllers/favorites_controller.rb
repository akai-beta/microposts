class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    #binding.pry
    micropost = Micropost.find(params[:favoritepost_id])
    #micropost = @micropost
    current_user.like(micropost)
    flash[:success] = 'お気に入りに追加しました'
    redirect_to root_path
  end

  def destroy
    #binding.pry
    micropost = Micropost.find(params[:favoritepost_id])
    current_user.unlike(micropost)
    flash[:danger] = 'お気に入りから削除しました'
    redirect_to :back
  end
end
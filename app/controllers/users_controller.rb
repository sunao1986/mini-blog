class UsersController < ApplicationController

  def show
    # binding.pry
    # user = User.find(params[:id])
    @name = current_user.name
    @articles = Article.where(user_id: current_user.id).order("created_at DESC")
  end
  
end
# @articles = user.articles.page(params[:page]).per(5).order("created_at DESC")
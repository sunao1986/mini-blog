class ArticlesController < ApplicationController
 
  def index
    @article = Article.new
    @articles = Article.includes(:user).order("created_at DESC")
  end

  def new
  end

  def create
    @article = Article.create(text: article_params[:text], image: article_params[:image], title: article_params[:title],  user_id: current_user.id)
    if @article.save
      redirect_to action: :index  
    else
      render action: :index      
    end
  end

  def show
    # binding.pry
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def destroy
    redirect_to '/users/current_user.id'
  end

  def update
    redirect_to '/users/current_user.id'
  end

  private
  def article_params
    params.require(:article).permit(:text, :image, :title)
  end

end

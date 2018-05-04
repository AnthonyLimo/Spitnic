class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @artilce = Article.find(params[:id])
  end

  def edit
    @artilce = Article.find(params[:id])
    if @artilce.update_attributes(allowed_params)
      redirect_to @artilce, notice: 'Article has been updated'
    else
      render :edit
    end
  end

  private

  def allowed_params
    params.require(:article).permit(:name,:author, :content, :published_at)
  end
end

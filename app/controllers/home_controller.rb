class HomeController < ApplicationController
  def index
  	@articles = Article.published.page(params[:page]).per(3)
  end
end

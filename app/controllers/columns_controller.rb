#encoding:utf-8
class ColumnsController < ApplicationController
	
	def show
		#@article = Article.find(params[:id])
		#@articles = Article.all
		@column = Column.find(params[:id])
		@articles = @column.articles.published.page(params[:page]).per(3)
	end
end

#encoding:utf-8
class ColumnsController < ApplicationController
	def index
		@articles = Article.all
	end

	def show
		#@article = Article.find(params[:id])
		@articles = Article.all
		@column = Column.find(params[:id])
	end
end

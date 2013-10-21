#encoding:utf-8
class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def find_article
		@article = Article.find(params[:id])
	end
end

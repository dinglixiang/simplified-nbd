#encoding:utf-8
class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def show
		
	end
end
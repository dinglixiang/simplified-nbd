#encoding:utf-8
class Admin::HomeController < AdminController
	def index
		@articles = Article.all
	end
end

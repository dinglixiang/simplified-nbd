#encoding:utf-8
class Admin::ArticlesController < AdminController
	before_filter :find_article,only: [:show,:update,:destroy]
	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def show
	end

	def create
		@article = Article.new(params[:article])
		if @article.save
			redirect_to admin_articles_path,notice: "添加成功."
		else
			redirect_to admin_articles_path,alert: "添加失败."
		end
	end

	def update
		if @article.update_attributes(params[:article])
			redirect_to admin_articles_path,notice: "更新成功."
		else
			redirect_to admin_articles_path,alert: "更新失败."
		end
	end

	def destroy
		@article.delete
		redirect_to admin_articles_path,notice: "删除成功."
	end

	private
	def find_article
		@article = Article.find(params[:id])
	end

end

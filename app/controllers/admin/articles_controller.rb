#encoding:utf-8
class Admin::ArticlesController < AdminController
	before_filter :find_article,only: [:show,:edit,:update,:destroy,:publish,:ban]

	#draft articles
	def index
		@articles = Article.draft
	end

	#published articles
	def published
		@articles = Article.published
	end

	#banned articles
  def banned
  	@articles = Article.banned
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

	def edit
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

	#发布
	def publish
		@article.state = "published"
		if @article.update_attributes(params[:article])
			redirect_to published_admin_articles_path,notice: "发布成功."
		else
			redirect_to published_admin_articles_path,alert: "发布失败."
		end
	end

	#禁止
	def ban
		@article.state = "banned"
		if @article.update_attributes(params[:article])
			redirect_to banned_admin_articles_path,notice: "您已禁止发布此文章."
		else
			redirect_to banned_admin_articles_path,alert: "禁止失败."
		end
	end

	private
	def find_article
		@article = Article.find(params[:id])
	end

end

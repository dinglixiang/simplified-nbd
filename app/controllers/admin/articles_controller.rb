#encoding:utf-8
class Admin::ArticlesController < AdminController
	before_filter :find_article,only: [:show,:edit,:update,:destroy,:publish,:ban]

	#draft articles
	def index
		@articles = Article.draft.page(params[:page]).per(10)
	end

	#published articles
	def published
		@articles = Article.published.page(params[:page]).per(10)
	end

	#banned articles
  def banned
  	@articles = Article.banned.page(params[:page]).per(10)
  end

	def new
		@article = Article.new
		#@article.articlecolumnships.build(:article_id => @article.id).build_column
	end

	def show
	end

	def create
		# render json: params[:article]
		columns = Array.new
		columns = params[:articlecolumnship][:column_id]
		columns.shift
		@article = Article.new(params[:article])
    
		if @article.save
			columns.each {|c|
    	    Articlecolumnship.create(article_id: @article.id,column_id: c.to_i) 	
      }

			redirect_to admin_articles_path,notice: "添加成功."
		else
			redirect_to admin_articles_path,alert: "添加失败."
		end
	end

	def edit
		@columns = @article.columns
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

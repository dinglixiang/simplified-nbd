#encoding:utf-8
class Admin::BlogrollsController < AdminController
	before_filter :find_blogroll,only: [:update,:edit,:destroy]
	
	def index
		@blogrolls = Blogroll.all
	end

	def new
		@blogroll = Blogroll.new
	end

	def create
		#render json: params[:blogroll]
		@blogroll = Blogroll.new(params[:blogroll])
		if @blogroll.save
			redirect_to admin_blogrolls_path,notice: "添加成功."
		else
			redirect_to admin_blogrolls_path,notice: "添加失败."
		end
	end

	def edit
	end

	def update
		if @blogroll.update_attributes(params[:blogroll])
			redirect_to admin_blogrolls_path,notice: "更新成功."
		else
			redirect_to admin_blogrolls_path,notice: "更新失败."
		end
	end

	def destroy
		@blogroll.delete
		redirect_to admin_blogrolls_path,notice: "删除成功."
	end

	private
	def find_blogroll
		@blogroll = Blogroll.find(params[:id])
	end

end
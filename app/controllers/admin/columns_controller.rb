#encoding:utf-8
class Admin::ColumnsController < AdminController
	before_filter :find_column,only: [:update,:edit,:destroy]
	
	def index
		@columns = Column.order(:id).page(params[:page]).per(10)
	end

	def new
		@column = Column.new
	end

	def create
		#render json: params[:column]
		@column = Column.new(params[:column])
		if @column.save
			redirect_to admin_columns_path,notice: "添加成功."
		else
			redirect_to admin_columns_path,notice: "添加失败."
		end
	end

	def edit
	end

	def update
		if @column.update_attributes(params[:column])
			redirect_to admin_columns_path,notice: "更新成功."
		else
			redirect_to admin_columns_path,notice: "更新失败."
		end
	end

	def destroy
		@column.delete
		redirect_to admin_columns_path,notice: "删除成功."
	end

	private
	def find_column
		@column = Column.find(params[:id])
	end

end
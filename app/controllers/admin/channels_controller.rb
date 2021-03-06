#encoding:utf-8
class Admin::ChannelsController < AdminController
	before_filter :find_channel,only: [:edit,:update,:destroy]
	
	def index
		@channels = Channel.order(:title).page(params[:page]).per(10)
		@columns = Column.all
		#render json: Channel.last.columns
	end

	def new
		@channel = Channel.new
	end

	def create
		@channel = Channel.new(params[:channel])
		if @channel.save
			redirect_to admin_channels_path,notice: "添加成功."
		else
			redirect_to admin_channels_path,alert: "添加失败."
		end
	end

	def edit
	end

	def update
		#render json: params[:channel][:tag_list]
		#@channel.tag_list = params[:channel][:tag_list]
		if @channel.update_attributes(params[:channel])
			redirect_to admin_channels_path,notice: "更新成功."
		else
			redirect_to admin_channels_path,alert: "更新失败."
		end
	end

	def destroy
		@channel.delete
		redirect_to admin_channels_path,notice: "删除成功."
	end

	def add_column
		#render json: params[:column][:title]

		#redirect_to admin_channels_path,alert: "更新失败."
	end

	private
	def find_channel
		@channel = Channel.find(params[:id])
	end

end
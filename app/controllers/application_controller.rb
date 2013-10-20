class ApplicationController < ActionController::Base
	before_filter :find_blogrolls
  protect_from_forgery

  def find_blogrolls
  	@blogrolls = Blogroll.all
  	@channels = Channel.all
  	@columns = Column.all
  end
end

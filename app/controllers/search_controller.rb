class SearchController < ApplicationController
	#search
	def index
		@search = Article.search do 
			fulltext params[:search]
		end
		@articles = @search.results
	end

end

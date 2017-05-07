class StaticPagesController < ApplicationController

	def home
    render html: "Home Page"
	end

end

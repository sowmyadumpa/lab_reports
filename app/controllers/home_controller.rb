class HomeController < ApplicationController
	def home
		@lab_cateogries = LabCategory.find(:all)
	end
end

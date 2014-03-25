class PersonalfilesController < ApplicationController
	def new
		@per = Personalfile.new
		@ranks = Rank.all
	end

	def create
		@per = Personalfile.new personalfile_params
		@per.save
		redirect_to new_personalfile_path
	end
	def show
		@per = Personalfile.find(params[:id])
	end
	def index
		@personalfiles = Personalfile.all
	end

	def edit
		@per = Personalfile.find(params[:id])
	end
	
	def update
		@per = Personalfile.find(params[:id])
		@per.update_attributes(personalfile_params)
		redirect_to personalfiles_path
	end

	def destroy
		@per = Personalfile.find(params[:id])
		@per.destroy
		redirect_to personalfiles_path
	end
		
	private 

	def personalfile_params
		params[:personalfile].permit(:firstname, :middlename, :lastname, :gender, :year, :traningcourse, :academicyear, :specialaccount, :mobileorder, :category)
	end
end

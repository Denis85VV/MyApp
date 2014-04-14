class PersonalfilesController < ApplicationController
	def new
		@per = Personalfile.new
		@ranks = Rank.all
		@faculties = Faculty.all
		@specialties = Specialty.all
		@recruitmentoffices = Recruitmentoffice.all
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
		@ranks = Rank.all
		@faculties = Faculty.all
		@specialties = Specialty.all
		@recruitmentoffices = Recruitmentoffice.all
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
		params[:personalfile].permit(:firstname, :middlename, :lastname, :gender, :year, :traningcourse, :academicyear, :specialaccount, :mobileorder, :category, :rank_id, :specialty_id, :recruitmentoffice_id)
	end
end

class PersonalfilesController < ApplicationController

before_action :authenticate_user!

	def new
		@per = Personalfile.new
		@ranks = Rank.all
		@faculties = Faculty.all
		@specialties = Specialty.all
		@recruitmentoffices = Recruitmentoffice.all
		@consists = Consist.all
		@positions = Position.all
	end
	def create
		@per = Personalfile.new personalfile_params
		if @per.save
			flash[:success]="Поздравляю! Форма успешно заполнена!" 
		else
			flash[:error]="Ошибка! Заполните пустые поля!" 
		end
		redirect_to new_personalfile_path
	end
	def show
		@per = Personalfile.find(params[:id])
	end
	def index
		#@personalfiles = Personalfile.all
		@search = Personalfile.search(params[:q])
    	@personalfiles = @search.result
	end

	def more
		@search = Personalfile.search(params[:q])
    	@personalfiles = @search.result
	end

	def edit
		@per = Personalfile.find(params[:id])
		@ranks = Rank.all
		@faculties = Faculty.all
		@specialties = Specialty.all
		@recruitmentoffices = Recruitmentoffice.all
		@consists = Consist.all
		@positions = Position.all
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
		params[:personalfile].permit(:firstname, :middlename, :lastname, :gender, :year, :traningcourse, :academicyear, :traning_period, :specialaccount, :mobileorder, :category, :rank_id, :specialty_id, :recruitmentoffice_id, :consist_id, :position_id, :note, :date_of_birth, :place_of_birth, :education, :family_status, :family)
	end
end

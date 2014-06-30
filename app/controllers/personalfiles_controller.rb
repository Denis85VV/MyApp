class PersonalfilesController < ApplicationController

before_action :authenticate_user!
before_filter :find_personalfile, only: [:show, :edit, :update, :destroy]
before_filter :search_personalfile, only: [:index, :more]

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
	end
	
	def index
	end

	def more
	end

	def edit
		@ranks = Rank.all
		@faculties = Faculty.all
		@specialties = Specialty.all
		@recruitmentoffices = Recruitmentoffice.all
		@consists = Consist.all
		@positions = Position.all
	end
	
	def update
		@per.update_attributes(personalfile_params)
		redirect_to personalfiles_path
	end

	def destroy
		@per.destroy
		redirect_to personalfiles_path
	end

	def destroy_multiple
		Personalfile.destroy(params[:personalfiles])
		redirect_to more_personalfiles_path
	end
		
	private

	def find_personalfile
		@per = Personalfile.find(params[:id])
	end

	def search_personalfile
		@search = Personalfile.search(params[:q])
    	@personalfiles = @search.result
	end

	def personalfile_params
		params[:personalfile].permit(:firstname, :middlename, :lastname, :gender, :year, :traningcourse, :academicyear, :traning_period, :specialaccount, :mobileorder, :category, :rank_id, :specialty_id, :recruitmentoffice_id, :consist_id, :position_id, :note, :date_of_birth, :place_of_birth, :education, :family_status, :family, :image_url)
	end
end

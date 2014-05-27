class RecruitmentofficesController < ApplicationController
	def new
		@recru = Recruitmentoffice.new
	end

	def create
		@recru = Recruitmentoffice.new recruitmentoffice_params
		if @recru.save
			flash[:notice]="Success" 
		else
			flash[:notice]="Success" 

		redirect_to new_recruitmentoffice_path
		end
	end
	def show
		@recru = Recruitmentoffice.find(params[:id])
		@ran = Rank.find(params[:id])
	end
	def index
		@recruitmentoffices = Recruitmentoffice.all
	end

	def edit
		@recru = Recruitmentoffice.find(params[:id])
	end
	
	def update
		@recru = Recruitmentoffice.find(params[:id])
		@recru.update_attributes(recruitmentoffice_params)
		redirect_to recruitmentoffices_path
	end

	def destroy
		@recru = Recruitmentoffice.find(params[:id])
		@recru.destroy
		redirect_to recruitmentoffices_path
	end
		
	private 

	def recruitmentoffice_params
		params[:recruitmentoffice].permit(:smallname, :bigname, :phone_number, :address)
	end
end

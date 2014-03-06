class SpecialtiesController < ApplicationController
	def new
		@spec = Specialty.new
	end

	def create
		@spec = Specialty.new specialty_params
		@spec.save
		redirect_to new_specialty_path
	end

	def index
		@specialties = Specialty.all
	end

	def edit
		@spec = Specialty.find(params[:id])
	end
	
	def update
		@spec = Specialty.find(params[:id])
		@spec.update_attributes(specialty_params)
		redirect_to specialties_path
	end

	def destroy
		@spec = Specialty.find(params[:id])
		@spec.destroy
		redirect_to specialties_path
	end
		
	private 

	def specialty_params
		params[:specialty].permit(:specialtyname, :specialtynumber)
	end
end

class FacultiesController < ApplicationController
	def new
		@fac = Faculty.new
	end

	def create
		@fac = Faculty.new faculty_params
		@fac.save
		redirect_to new_faculty_path
	end
	def show
		@fac = Faculty.find(params[:id])
	end
	def index
		@faculties = Faculty.all
	end

	def edit
		@fac = Faculty.find(params[:id])
		@spec = Specialty.find(params[:id])
	end
	
	def update
		@fac = Faculty.find(params[:id])
		@fac.update_attributes(faculty_params)
		redirect_to faculties_path
	end

	def destroy
		@fac = Faculty.find(params[:id])
		@fac.destroy
		redirect_to faculties_path
	end
		
	private 

	def faculty_params
		params[:faculty].permit(:facultyname)
	end
end

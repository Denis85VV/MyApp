class FacultiesController < ApplicationController

	before_filter :find_faculty, only: [:show, :edit, :update, :destroy]

	def new
		@fac = Faculty.new
	end

	def create
		@fac = Faculty.new faculty_params
		@fac.save
		redirect_to new_faculty_path
	end
	
	def show
	end

	def index
		@faculties = Faculty.all
	end

	def edit
	end
	
	def update
		@fac.update_attributes(faculty_params)
		redirect_to faculties_path
	end

	def destroy
		@fac.destroy
		redirect_to faculties_path
	end
		
	private 

	def find_faculty
		@fac = Faculty.find(params[:id])
	end

	def faculty_params
		params[:faculty].permit(:facultyname)
	end
end

class ConsistsController < ApplicationController

	before_filter :find_consist, only: [:show, :edit, :update, :destroy]

	def new
		@con = Consist.new
	end

	def create
		@con = Consist.new consist_params
		@con.save
		redirect_to new_consist_path
	end
	
	def show
	end

	def index
		@consists = Consist.all
	end

	def edit
	end
	
	def update
		@con.update_attributes(consist_params)
		redirect_to consists_path
	end

	def destroy
		@con.destroy
		redirect_to consists_path
	end
		
	private 

	def find_consist
		@con = Consist.find(params[:id])
	end

	def consist_params
		params[:consist].permit(:name)
	end
end

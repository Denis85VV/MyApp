class ConsistsController < ApplicationController
	def new
		@con = Consist.new
	end

	def create
		@con = Consist.new consist_params
		@con.save
		redirect_to new_consist_path
	end
	def show
		@con = Consist.find(params[:id])
	end
	def index
		@consists = Consist.all
	end

	def edit
		@con = Consist.find(params[:id])
	end
	
	def update
		@con = Consist.find(params[:id])
		@con.update_attributes(consist_params)
		redirect_to consists_path
	end

	def destroy
		@con = Consist.find(params[:id])
		@con.destroy
		redirect_to consists_path
	end
		
	private 

	def consist_params
		params[:consist].permit(:name)
	end
end

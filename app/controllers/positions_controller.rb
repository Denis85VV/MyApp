class PositionsController < ApplicationController
	def new
		@pos = Position.new
	end

	def create
		@pos = Position.new position_params
		@pos.save
		redirect_to new_position_path
	end
	def show
		@pos = Position.find(params[:id])
	end
	def index
		@positions = Position.all
	end

	def edit
		@pos = Position.find(params[:id])
	end
	
	def update
		@pos = Position.find(params[:id])
		@pos.update_attributes(position_params)
		redirect_to positions_path
	end

	def destroy
		@pos = Position.find(params[:id])
		@pos.destroy
		redirect_to positions_path
	end
		
	private 

	def position_params
		params[:position].permit(:name)
	end
end

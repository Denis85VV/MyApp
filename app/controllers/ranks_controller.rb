class RanksController < ApplicationController
	def new
		@ran = Rank.new
	end

	def create
		@ran = Rank.new rank_params
		@ran.save
		redirect_to new_rank_path
	end
	def show
		@ran = Rank.find(params[:id])
	end
	def index
		@ranks = Rank.all
	end

	def edit
		@ran = Rank.find(params[:id])
	end
	
	def update
		@ran = Rank.find(params[:id])
		@ran.update_attributes(rank_params)
		redirect_to ranks_path
	end

	def destroy
		@ran = Rank.find(params[:id])
		@ran.destroy
		redirect_to ranks_path
	end
		
	private 

	def rank_params
		params[:rank].permit(:name)
	end
end

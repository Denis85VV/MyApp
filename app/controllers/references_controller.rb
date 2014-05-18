class ReferencesController < ApplicationController
	def show
		@per = Personalfile.find(params[:id])
	end
end

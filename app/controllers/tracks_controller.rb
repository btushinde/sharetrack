class TracksController < ApplicationController

	respond_to :json

	def index
	  respond_with Track.all
	end

	def show
		respond_with Track.find(params[:id])
	end

	def create
		respond_with Track.create(params[:track])
	end

	def update
		respond_with Track.update(params[:id], params[:entry])
	end

	def destroy
		respond_with Track.destroy(params[:id])
	end
end

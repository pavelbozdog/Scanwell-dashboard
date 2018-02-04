class ParticipantsController < ApplicationController

	def index
		@participants = Participant.all
	end

	def show
		@participant = Participant.find(params[:id])
		@results = Result.where participant_id: params[:id]
	end

end
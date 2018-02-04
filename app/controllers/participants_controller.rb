class ParticipantsController < ApplicationController

	def index
		@participants = Participant.all
	end

	def show
		@participant = Participant.find_by unique_id: params[:unique_id]
		@results = @participant.results
	end

end
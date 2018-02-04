class StaticController < ApplicationController

	before_action :authenticate_user!, only: [:dashboard]

	def index
	end

	def dashboard
		@participants = Participant.all
	end
end
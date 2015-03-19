class Api::V1::ApiApplicationController < ApplicationController
	before_action :logme

	def logme
		logger.debug "+++++++++++API/V1 API ApplicationController get calls at #{Time.now}"
	end

	def say_hi
		Faker::Lorem.words(5) 
	end

end

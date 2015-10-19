class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :logme

  # include ExtendedClass
  
  # helper_method :say_hi
	def logme
		logger.debug "============Main ApplicationController get calls at #{Time.now}"
	end

	def say_hi
      FFaker::Lorem.sentence(20)
	end

end

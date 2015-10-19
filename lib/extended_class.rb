module ExtendedClass

	ActiveRecord::Base.calss_eval do
		
		def before_save
			logger.info "<<<<<<Hello from extended calss before_save method>>>>>>>"
		end	

	end

end
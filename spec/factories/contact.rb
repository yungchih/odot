
FactoryGirl.define do
	factory :contact do
		# name { FFaker::Name.name }
	 #  phone { FFaker::PhoneNumber.short_phone_number }
	  name FFaker::Name.name
	  phone FFaker::PhoneNumber.short_phone_number
	end

end
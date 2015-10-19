FactoryGirl.define do
	factory :todo_list do
		title {"World best of things"}
		description {"Things are great around the world"}

		after(:build) {|todo_list| todo_list.class.skip_callback(:create, :before, :do_log)}
	end

end
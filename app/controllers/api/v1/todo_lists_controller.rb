module Api
	module V1
		class TodoListsController < Api::V1::ApiApplicationController
			respond_to :json

			def index
				# respond_with(TodoList.all)
				respond_with("#{say_hi}")
			end

			def show
				# respond_with(TodoList.find(params[:id]))
				respond_with("#{say_hi}")
			end

		end
	end
end
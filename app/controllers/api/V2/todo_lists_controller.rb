module Api
	module V2
		class TodoListsController < ApplicationController
			respond_to :json

			def index
				respond_with(TodoList.first)
			end

			def show
				respond_with(TodoList.find(params[:id]))
			end

		end
	end
end
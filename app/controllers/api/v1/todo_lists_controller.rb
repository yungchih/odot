module Api
	module V1
		class TodoListsController < ApplicationController
			respond_to :json

			def index
				respond_with(TodoList.all)
			end

			def show
				respond_with(TodoList.find(params[:id]))
			end

		end
	end
end
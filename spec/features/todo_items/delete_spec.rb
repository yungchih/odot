require 'rails_helper'

describe "Deleting todo items" do
	let!(:todo_list) { TodoList.create(title: "Groceries", description: "Grocery list.")}
	let!(:todo_item) { todo_list.todo_items.create(content: "Milk")}

	# def visit_todo_list(list)	
	# 	visit "/todo_lists"
	# 	within "#todo_list_#{list.id}" do
	# 		click_link "List Items"
	# 	end
	# end
	# replaced by the spec/support/todo_list_helper.rb, see detail in rails_helper.rb RSpec.configure section
	it "is successful" do
		visit_todo_list(todo_list)
		within "#todo_item_#{todo_item.id}" do
      click_link "Delete"
    end

		expect(page).to have_content("Todo list item was deleted.")
		# expect(TodoItem.count).to eq(0)
		puts "Count: #{TodoItem.count}"
	end

end
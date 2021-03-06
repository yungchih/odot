require 'rails_helper'

describe "Adding todo items" do 
	let!(:todo_list) {TodoList.create(title: "Grocery list", description: "Groceries")}

	# def visit_todo_list(list)	
	# 	visit "/todo_lists"
	# 	within "#todo_list_#{list.id}" do
	# 		click_link "List Items"
	# 	end
	# end
	# replaced by the spec/support/todo_list_helper.rb, see detail in rails_helper.rb RSpec.configure section

	it "is successful with valid content" do
		visit_todo_list(todo_list)
		click_link "New Todo Item"

		fill_in "Content", with: "Milk"
		click_button "Save"
		expect(page).to have_content("Added todo list item")
		within("ul.todo_items") do
			expect(page).to have_content("Milk")
		end
	end

	it "display an error with no content" do
		visit_todo_list(todo_list)
		click_link "New Todo Item"
		fill_in "Content", with: ""
		click_button "Save"
		within("div.flash") do
			expect(page).to have_content("There was a problem adding that todo list item.")
		end
		expect(page).to have_content("Content can't be blank")
	end

	it "display an error with content less than 2 characters" do
		visit_todo_list(todo_list)
		click_link "New Todo Item"
		fill_in "Content", with: "1"
		click_button "Save"
		within("div.flash") do
			expect(page).to have_content("There was a problem adding that todo list item.")
		end
		expect(page).to have_content("Content is too short")
	end
end
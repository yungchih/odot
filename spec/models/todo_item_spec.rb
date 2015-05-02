require 'rails_helper'

RSpec.describe TodoItem, :type => :model do
  it { should belong_to(:todo_list)}

  describe "#complted?" do
  	let(:todo_item) {TodoItem.create(content: "Hello")}

  	it "is false when completed_is blank" do
  		todo_item.completed_at = nil
  		# expect(todo_item.completed?).to be false
  		expect(todo_item.completed?).to be_falsy
  	end

  	it "returns true when completed_at is not empty" do
  		todo_item.completed_at = Time.now
  		# expect(todo_item.completed?).to be_thruthy
  		expect(todo_item.completed?).to be true
  	end

  end
end

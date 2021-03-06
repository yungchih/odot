class TodoList < ActiveRecord::Base
	has_many :todo_items
	validates :title, presence: true
	validates :title, length: { minimum: 3}
	validates :description, presence: true
	validates :description, length: { minimum: 5}
	before_save :do_log

	def has_completed_items?
		todo_items.complete.size > 0
	end

	def has_incompleted_items?
		todo_items.incomplete.size > 0
	end

	private

	def do_log
		logger.info "#{Time.now}"
	end
end

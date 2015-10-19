# this is mytest.rb
# pid = fork do
	loop do
		sleep(1)
		puts "#{Time.now}"
	end
# end
# Process.detach(pid)
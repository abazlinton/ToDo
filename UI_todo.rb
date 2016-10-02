require_relative 'todo.rb'
include Remedy

def output_outstanding_count(returned_data)
	puts "Outstanding todos = #{returned_data}"
end


user_input = Interaction.new

user_input.loop do |key|
    puts key
end
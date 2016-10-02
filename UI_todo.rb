require_relative 'todo.rb'


def output_outstanding_count(returned_data)
	puts "Outstanding todos = #{returned_data}"
end

def output_outstanding_todos(returned_data)
  counter = 1
  for todo in returned_data
    puts "#{counter}. #{todo[:text]}"
    counter += 1
  end
end

@todos = [ {text: "Washing", done: false},
          {text: "Homework", done: false},
          {text: "Update README", done: true}
      ]

puts "Name of new Todo?"
text = gets
add_todo(text)

output_outstanding_todos(@todos)
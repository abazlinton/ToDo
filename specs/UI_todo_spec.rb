require 'pry-byebug'
require 'minitest/autorun'
require 'minitest/rg'
require_relative '../UI_todo.rb'
   

class TestToDo < MiniTest::Test

   def setup
      @todos = [
       
          {text: "Washing", done: false},
          {text: "Homework", done: false},
          {text: "Update README", done: true}
      ]

   end

   def test_output_outstanding_count
      
      return_from_model = outstanding_count(@todos)
      
      assert_output( "Outstanding todos = 2\n") do
         output_outstanding_count( return_from_model )
      end
      
       
   end

   def test_output_outstanding_todos
      
      return_from_model = outstanding_todos(@todos)
      
      assert_output( "1. Washing\n2. Homework\n") do
         output_outstanding_todos( return_from_model )
      end
      
       
   end

end


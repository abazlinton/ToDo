require 'pry-byebug'
require 'minitest/autorun'
require 'minitest/rg'
require_relative '../todo.rb'

class TestToDo < MiniTest::Test

def setup

  @todos = [
   
      {text: "Washing", done: false},
      {text: "Make Dinner", done: false},
      {text: "Homework", done: false},
      {text: "Update README", done: true}
  ]
end

  #count one todos's todos
  def test_outstanding_count
    count = outstanding_count(@todos)
    assert_equal(3, count)

  end


  def test_outstanding_count__empty
    @todos.pop(4)
    count = outstanding_count(@todos)
    assert_equal(nil, count)
  end



  #return oustanding todos in a todos
  def test_outstanding_todos
  todos = outstanding_todos(@todos)
    assert_equal( Array, todos.class) 
    assert_equal( 3, todos.count)

  end

  def test_outstanding_todos__empty
    @todos.pop(4)
    todos = outstanding_todos(@todos)
    assert_equal( NilClass, todos.class ) 

  end

  def test_add_todo
    add_todo("Get groceries")
    expected_last_todo = {text: "Get groceries", done: false}

    assert_equal(expected_last_todo, @todos.last)
  end
end





require 'pry-byebug'
require 'minitest/autorun'
require 'minitest/rg'
require_relative '../todo.rb'

class TestToDo < MiniTest::Test

def setup

  @lists = [
    {
      name: "Personal",
      todos: [
          {text: "Washing", done: false},
          {text: "Make Dinner", done: false}

      ]
    },
    {
      name: "CodeClan",
      todos: [

          {text: "Homework", done: false},
          {text: "Update README", done: true}

      ]
    },
    {
      name: "Blank",
      todos: [
      ]

    }

  ]
end

  #count one list's todos
  def test_outstanding_count_list__list_exists
    count = outstanding_count_list(@lists, "Personal")

    assert_equal(2, count)
  end

  def test_outstanding_count_list__list_does_not_exist
    count = outstanding_count_list(@lists, "I do not exist")
    assert_equal(nil, count)

  end

  def test_outstanding_count_list__list_is_empty
    @lists[0][:todos].pop(2)
    count = outstanding_count_list(@lists, "Personal")
    assert_equal(0, count)

  end


  #count all lists' todos
  def test_outstanding_count_global
    count = outstanding_count_global(@lists)

    assert_equal(4, count)
  end

  def test_outstanding_count_global__no_lists_exist
    @lists = []
    count = outstanding_count_global(@lists)
    assert_equal(nil, count)
  end

  def test_outstanding_count_global__no_lists
    @lists = []
    count = outstanding_count_global(@lists)
    assert_equal(nil, count)
  end

  #return oustanding todos in a list
  def test_outstanding_todos_list
    todos = outstanding_todos_list(@lists, "CodeClan")

    assert_equal( Array, todos.class) 
    assert_equal( 1, todos.count)

    todos = outstanding_todos_list(@lists, "Personal")
    assert_equal( Array, todos.class) 
    assert_equal( 2, todos.count)

  end

  def test_outstanding_todos_list__list_empty
    todos = outstanding_todos_list(@lists, "Blank")

    assert_equal( NilClass, todos.class) 

  end

  #return all outstanding todos
  def test_outstanding_todos_global
    todos = outstanding_todos_global(@lists)

    assert_equal( Array, todos.class) 
    assert_equal( 3, todos.count)
  end

end



#






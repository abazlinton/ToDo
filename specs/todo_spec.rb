require 'pry-byebug'
require 'minitest/autorun'
require 'minitest/rg'

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
    }

  ]
end


  def test_outstanding_count_list
    count = outstanding(@lists, "Personal")

    assert_equal(2, count)
  end

  def test_outstanding_count_global
    count = outstanding(@lists)

    assert_equal(3, count)
  end

  def test_outstanding_todos_list
    todos = todos_outstanding(@lists, "CodeClan")

    assert_equal( "Array", todos.class) 
    assert_equal( 1, todos.count)
  end

  def test_outstanding_todos_global
    todos = outstanding(@lists)

    assert_equal( "Array", todos.class) 
    assert_equal( 3, todos.count)
  end

end



#






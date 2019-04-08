require('minitest/autorun')
require('minitest/rg')
require_relative('../books.rb')

class TestLibrary < MiniTest::Test

  def setup
    @lotr = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }
    @harry_potter = {
      title: "harry_potter",
      rental_details: {
        student_name: "Alan",
        date: "05/04/16"
      }
    }
    @book_list = [@lotr, @harry_potter]

  end


  def test_get_title
    library = Library.new(@book_list)
    library.get_books
    assert_equal(@book_list, library.get_books)
  end

def test_retrieve_book_from_title
  library = Library.new(@book_list)
  book = library.book_info_from_title("harry_potter")
  assert_equal({
    title: "harry_potter",
    rental_details: {
      student_name: "Alan",
      date: "05/04/16"
    }
  }, book)
end

def test_retrieve_rental_details_from_title
  library = Library.new(@book_list)
  book = library.rental_info_from_title("harry_potter")
  assert_equal({
      student_name: "Alan",
      date: "05/04/16"
    },
   book)
   assert_equal("Alan", book[:student_name])
   assert_equal("05/04/16", book[:date])
end

def test_add_book_to_library
  library = Library.new(@book_list)
  library.add_book("Dictionary", @book_list)
  assert_equal(3, @book_list.length)
end

def test_change_rental_details
  library = Library.new(@book_list)
  library.change_details("harry_potter","Bob","05/04/17")
  assert_equal({
    title: "harry_potter",
    rental_details: {
      student_name: "Bob",
      date: "05/04/17"
    }
  }, @harry_potter)
end















end

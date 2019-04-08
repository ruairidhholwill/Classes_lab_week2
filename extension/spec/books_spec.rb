require('minitest/autorun')
require('minitest/rg')
require_relative('../books.rb')

class TestLibrary < MiniTest::Test


  def test_get_title
    book_list = Library.new(
      [
        {
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
          }
        },
        {
          title: "harry_potter",
          rental_details: {
            student_name: "Alan",
            date: "05/04/16"
          }
        }
      ]
    )
    book_list.get_books
    assert_equal([
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "harry_potter",
        rental_details: {
          student_name: "Alan",
          date: "05/04/16"
        }
      }
    ],book_list.get_books)
  end

def test_retrieve_book_from_title
  book_list = Library.new(
    [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "harry_potter",
        rental_details: {
          student_name: "Alan",
          date: "05/04/16"
        }
      }
    ]
  )
  book = book_list.book_info_from_title("harry_potter")
  assert_equal({
    title: "harry_potter",
    rental_details: {
      student_name: "Alan",
      date: "05/04/16"
    }
  }, book)
end

def test_retrieve_rental_details_from_title
  book_list = Library.new(
    [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "harry_potter",
        rental_details: {
          student_name: "Alan",
          date: "05/04/16"
        }
      }
    ]
  )
  book = book_list.rental_info_from_title("harry_potter")
  assert_equal({
      student_name: "Alan",
      date: "05/04/16"
    },
   book)
end
















end

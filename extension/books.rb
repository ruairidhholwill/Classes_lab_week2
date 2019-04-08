require_relative('spec/books_spec')

class Library

  def initialize(books)
    @books = books
  end

  def get_books
    @books
  end

  def book_info_from_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

  def rental_info_from_title(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
  end

  def add_book(title, book_list)
    book_list.push({
      title: title ,
      rental_details: {
        student_name: "" ,
        date:"" ,
      }
      })
    end

    def change_details(title, new_student_name, new_date)
      for book in @books
        if book[:title] == title
          book[:rental_details][:student_name] = new_student_name
          book[:rental_details][:date] = new_date
        end
      end
    end


  end

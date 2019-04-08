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

def book_info_from_title(title)
  for book in @books
    if book[:title] == title
      return book[:rental_details]
    end
  end
end


end

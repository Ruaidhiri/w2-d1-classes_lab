class Library

  def initialize(catalogue)
    @catalogue = catalogue
  end

attr_accessor(:catalogue)

###########################################

  def book_info(title)

    return @catalogue.find {|book_name| book_name[:title] == title}

  end

###########################################

  def book_rental_details(title)

    book = @catalogue.find {|book_name| book_name[:title] == title}
    return book[:rental_details]

  end

###########################################

def add_book(title)

  @catalogue.push({
    title: title,
    rental_details: {
      student_name: "",
      date: ""}
      })

end

###########################################

def change_rental_details(title, renter, date)

  book = @catalogue.find {|book_name| book_name[:title] == title}

    book[:rental_details][:student_name] = renter
    book[:rental_details][:date] = date

end

###########################################

end

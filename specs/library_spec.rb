require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup

    @library_contents = [
      {
        title: "Dune",
        rental_details: {
          student_name: "Rory",
          date: "20/05/19"}
          }
        ]

  end

  def test_catalogue
    books = Library.new(@library_contents)
    assert_equal([{title: "Dune",rental_details: {student_name: "Rory", date: "20/05/19"}}], books.catalogue)
  end

  def test_book_info
    books = Library.new(@library_contents)
    assert_equal({title: "Dune",rental_details: {student_name: "Rory", date: "20/05/19"}}, books.book_info("Dune"))
  end

  def test_book_rental_details
    books = Library.new(@library_contents)
    assert_equal({student_name: "Rory", date: "20/05/19"},books.book_rental_details("Dune"))
  end

  def test_add_book
    books = Library.new(@library_contents)
    books.add_book("Jurassic Park")
    assert_equal({
      title: "Jurassic Park",
      rental_details: {
        student_name: "",
        date: ""}
        }, books.book_info("Jurassic Park"))
  end

  def test_change_rental_details
    books = Library.new(@library_contents)
    books.change_rental_details("Dune", "Henry", "21/05/19")
    assert_equal({title: "Dune",rental_details: {student_name: "Henry", date: "21/05/19"}},books.book_info("Dune"))
  end

end

require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

def test_student_name
  student = Student.new("Rory", "E31")
  assert_equal("Rory", student.name)
end

def test_student_cohort
  student = Student.new("Rory", "E31")
  assert_equal("E31", student.cohort)
end

def test_set_student_name
  student = Student.new("Rory", "E31")
  student.set_student_name("Henry")
  assert_equal("Henry", student.name)
end

def test_set_student_cohort
  student = Student.new("Rory", "E31")
  student.set_student_cohort("E32")
  assert_equal("E32", student.cohort)
end

def test_make_student_talk
  student = Student.new("Rory", "E31")
  assert_equal("Hello", student.make_student_talk("Hello"))
end

def test_say_favourite_language
  student = Student.new("Rory", "E31")
  assert_equal("My favourite language is Ruby", student.say_favourite_language("Ruby"))
end

end

class Student

  def initialize(name, cohort)
    @cohort = cohort
    @name = name
  end

  attr_reader(:name, :cohort)
  attr_writer(:name, :cohort)

  def set_student_name(new_name)
    @name = new_name
  end

  def set_student_cohort(new_cohort)
    @cohort = new_cohort
  end

  def make_student_talk(message)
    return message
  end

  def say_favourite_language(language)
    return "My favourite language is #{language}"
  end

end

require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student_class')

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new('Ben', 'e30')
    assert_equal('Ben', student.get_name)
  end

  def test_cohort
    student = Student.new('Ben', 'e30')
    assert_equal('e30', student.cohort_name)
  end

  def test_set_student_name
    student = Student.new('Ben', 'e30')
    student.set_name('Ru')
    assert_equal('Ru', student.get_name)
  end

  def test_set_cohort_name
    student = Student.new('Ben', 'e30')
    student.set_cohort_name('e27')
    assert_equal('e27', student.cohort_name)
  end

  def test_student_can_talk
    student = Student.new('Ben', 'e30')
    can_talk = student.can_talk
    assert_equal('I can talk!', can_talk)
  end

  def test_favourite_language
    student = Student.new('Ben', 'e30')
    favourite_language = student.fav_programming_language('Ruby')
    assert_equal('I love Ruby!',favourite_language)
  end

end

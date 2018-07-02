require('minitest/autorun')
require_relative('../day1.rb')
require('minitest/rg')

class TestStudent < MiniTest::Test

  def test_cohort_name
   person = Student.new("E23", "Stuart", "talk")
   assert_equal("Stuart", person.name)
  end

  def test_set_name
    person = Student.new("E23", "Stuart", "talk")
    person.name = "Bea"
    assert_equal("Bea", person.name)
  end

  def test_talk
    person = Student.new("E23", "Stuart", "I Can Talk!")
    assert_equal("I Can Talk!", person.talk)
  end

  def test_say_favourite_language
    person = Student.new("E23", "Stuart", "I Can Talk!")
    person.say_favourite_language("Ruby")
    assert_equal("I Love Ruby", person.talk)
    end

end

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

  def test_say_something
    person = Student.new("E23", "Stuart", "I Can Talk!")
    puts "What's your favourite language? :- "
    what_they_said = gets.chomp.capitalize
    what_they_said = "I Love " + what_they_said
    p what_they_said
    person.say_something(what_they_said)
    assert_equal("I Love Ruby", person.talk)
    end

end

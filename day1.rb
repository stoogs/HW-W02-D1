class Student
attr_reader :cohort, :name, :talk
attr_writer :cohort, :name, :talk

 def initialize (cohort, name, talk)
   @cohort = cohort
   @name = name
   @talk = talk
 end

def say_something(what_they_said)
@talk = what_they_said

end



















end

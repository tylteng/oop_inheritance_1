class Person
attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}"
  end
end

class Student < Person

  def learn
    puts "I get it!!"
  end

end


class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object."
  end

end

nadia = Instructor.new("Nadia")
nadia.greeting
chris = Student.new("Chris")
chris.greeting

nadia.teach
chris.learn

chris.teach

# This won't work because the student only contains the method "learn".
# The student class will inherit all the attributes from the person class,
# but it was never given the ability to inherit from the teacher class.

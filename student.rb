require './reportcard'

class Student
  # Constructor accepts name and age attributes and creates an instance of Reportcard
  def initialize(name, age)
    @name = name
    @age = age
    @reportcard = Reportcard.new
  end
end

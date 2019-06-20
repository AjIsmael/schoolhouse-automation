require 'faker'
require 'pry'
require_relative 'student'
require_relative 'classroom'
require_relative 'grade'

# Our four classrooms for the first years
@A = Classroom.new("1A")
@B = Classroom.new("1B")
@C = Classroom.new("1C")
@D = Classroom.new("1D")

# Create test students with grades in various subjects
def generate_student
  student = Student.new(Faker::Name.name, rand(11..20))
  student.report_card.add_grade("math", rand(0..100))
  student.report_card.add_grade("history", rand(0..100))
  student.report_card.add_grade("english", rand(0..100))
  student.report_card.add_grade("science", rand(0..100))
  return student # returns the student created with its grade
end

# Generate our students in each section
1..25.times do |i|
  @A.add_student(generate_student)
end
1..25.times do |i|
  @B.add_student(generate_student)
end
1..25.times do |i|
  @C.add_student(generate_student)
end
1..25.times do |i|
  @D.add_student(generate_student)
end

# a function to find the pass or fail grade for students in a particular classroom
def find_failing(classroom)
  classroom.students.each { |key, value|
    total = 0
    value.report_card.grades.each do |key, value|
      total = total + value
    end
    if total > 200
      puts "#{value.name}: PASS"
    else
      puts "#{value.name}: FAIL"
    end
    }
    puts ""
end

find_failing(@A) #trial on classroom A

# a function to find students who got exceptional grade in a classroom
def find_exceptional(classroom)
  classroom.students.each { |key, value|
    total = 0
    value.report_card.grades.each do |key, value|
      total = total + value
    end
    if total > 260
      puts "#{value.name}: Exceptional" #added a string for replying for people who have greater than 260
    end
    }
    puts ""
end

find_exceptional(@B)  #trial on classroom B

require 'faker'
require 'pry'
require './student'
require './classroom'
require './grade'

# Our four classrooms for the first years
@A = Classroom.new("1A")
@B = Classroom.new("1B")
@C = Classroom.new("1C")
@D = Classroom.new("1D")

# Create test students with grades in various subjects
def genStudent
  s = Student.new(Faker::Name::name, rand(11..20))
  s.reportcard.addGrade(Grade.new("math", rand(0..100)))
  s.reportcard.addGrade(Grade.new("history", rand(0..100)))
  s.reportcard.addGrade(Grade.new("english", rand(0..100)))
  s.reportcard.addGrade(Grade.new("science", rand(0..100)))
  s
end

# Generate our students
1..25.times do |i|
  @A.addStudent(genStudent())
end
1..25.times do |i|
  @B.addStudent(genStudent())
end
1..25.times do |i|
  @C.addStudent(genStudent())
end
1..25.times do |i|
  @D.addStudent(genStudent())
end

# Check the rosters
# @A.roster
# puts ""
# @B.roster
# puts ""
# @C.roster
# puts ""
# @D.roster
# puts ""


############################################################
# CHALLENGE 1

# def findFailing(classroom)
#   classroom.students.each { |key,value|
#     total = 0
#     value.reportard.grades.each do |key, value|
#       total = total + value.grade
#     end
#     if total > 200:
#       puts "PASS"
#   }
# end

# findFailing @A

############################################################
# CHALLENGE 2
# def findExceptional(classroom)
#   classroom.students.each { |key,value|
#       total = 0
#       value.reportcard.grade.map do |key, value|
#         total = total + value.score
#       end
#       if total > 260:
#         puts student.name

#     }
# end

# findExceptional @B

############################################################

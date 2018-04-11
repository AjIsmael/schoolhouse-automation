class Reportcard

  # Constructor creates a hash that stores grades
  def initialize
    @grades = {}
  end

  # Add subject grade to hash?
  def addGrade(grade)
    if @grades[grade.subject]
      raise "Sorry, you cannot add or change #{subject} because it was already entered."
    end
    @grades[grade.subject]
  end

  # Prints out each element of grades hash
  def printCard
    @grades.each do |subject, grade|
      puts "Subject: #{subject} - #{grade.score}"
    end
  end

  # Returns grades hash
  def grades
    @grades
  end

end

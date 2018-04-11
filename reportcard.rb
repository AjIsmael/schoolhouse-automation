class Reportcard

  def initialize
    @grades = {}
  end

  def addGrade(grade)
    if @grades[grade.subject]
      raise "Sorry, you cannot add or change #{subject} because it was already entered."
    end
    @grades[grade.subject]
  end

  def printCard
    @grades.each do |subject, grade|
      puts "Subject: #{subject} - #{grade.score}"
    end
  end

  def grades
    @grades
  end

end

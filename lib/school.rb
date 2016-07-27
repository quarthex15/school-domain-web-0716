# code here!
class School
  def initialize(school_name)
    @name = school_name
    @roster = Hash.new
  end

  attr_reader :roster
  
  def add_student(student_name, student_grade)
    @roster[student_grade] = [] if @roster[student_grade] == nil   
    @roster[student_grade] << student_name
  end

  def grade(students_grade)
    @roster[students_grade]
  end

  def sort()
    @sorted_hash = {}
    @roster.each do |grade, students|
      @sorted_hash[grade] = students.sort
    end
    @sorted_hash
  end

end
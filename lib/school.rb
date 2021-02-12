# code here!
#
require 'pry'
class School                #the school class would be referred to as a "model" in the domain model context
    attr_accessor :roster, :name
    
    def initialize(name)     #create a class, School that can be initialized with a name. 
        @name = name 
        @roster = {}          #a school should have a roster. the roster should be an empty hash upon initialization but will be built out to contain keys of grade levels/ the value of each key will be an array of student names.
    end
    
    def add_student(student, grade)  #you should be able to add a student to the school by calling the add_student method and giving it an argument of the student's name and their grade
        if @roster [grade]
            @roster[grade] << student
        else
            @roster[grade] = [student]
        end 
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each {|grade, students| students.sort!}
    end
end




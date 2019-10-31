# code here!
class School
    attr_accessor = :name
    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def roster
        @roster
    end
    
    def add_student(name, grade)
        if !@roster.has_key?(grade)
            @roster[grade]  = []
        end
        if @roster.has_key?(grade) && !@roster.has_value?(name)
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, students|
            students.sort!
        end
    end
end


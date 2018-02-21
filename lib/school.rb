class School 

	attr_reader :name, :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(name, num_grade)
		@roster[num_grade] = [] if !roster.include?(num_grade)
		@roster[num_grade] << name
	end

	def grade(num_grade)
		@roster[num_grade]
	end

	def sort
		@roster.each do |num_grade, students|
			students.sort!
		end
	end
end
